SELECT *
FROM dbo.Covid
WHERE continent is not null
ORDER BY 3,4

SELECT *
FROM dbo.Covid
ORDER BY 3,4

--Select data that we are going to be using

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM dbo.Covid
ORDER BY 1,2

-- Looking at Total Cases vs Total Death 
-- Shows likelihood of dying if you contract covid in your country
SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM dbo.Covid
Where location like '%states%'
ORDER BY 1,2

-- Looking at Total Cases vs Population

SELECT location, date, population, total_cases, (total_cases/population)*100 as PercentPopulationInfected
FROM dbo.Covid
Where location like '%states%'
ORDER BY 1,2

-- Looking at Countries with Highest Infection Rate compared to Population

SELECT location, population, MAX(total_cases) as HighestInfectionCount, Max((total_cases/population))*100 as PercentPopulationInfected
FROM dbo.Covid
-- Where location like '%states%'
Group by Location, Population
ORDER BY [PercentPopulationInfected] desc

-- Showing Countries with Highest Death Count per Popilation
SELECT location, MAX(Total_deaths) as TotalDeathCount
FROM dbo.Covid
-- Where location like '%states%'
WHERE continent is not null
Group by Location
ORDER BY TotalDeathCount desc

-- LET'S BREAK THINGS DOWN BY CONTINENT

--Showing continents with the highest death count per population

SELECT continent, MAX(Total_deaths) as TotalDeathCount
FROM dbo.Covid
-- Where location like '%states%'
WHERE continent is not null
Group by continent
ORDER BY TotalDeathCount desc



-- GLOBAL NUMBERS

SELECT SUM(New_cases) as total_cases, sum(new_deaths) as total_deaths, (sum(new_deaths)/sum(new_cases))*100 as DeathPercentage
FROM dbo.Covid
-- Where location like '%states%'
Where continent is not null
--Group By date
ORDER BY 1,2

-- Looking at Total Population vs Vaccinations
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM dbo.Covid dea
JOIN dbo.CovidVaccinations vac
    On dea.location = vac.location 
    and dea.date = vac.date
WHERE dea.continent is not NULL
ORDER BY 2,3
 
-- USE CTE

With PopvsVac (Continent, Location, Date, Population, new_vaccinations, RollingPeopleVaccinated)
As
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM dbo.Covid dea
JOIN dbo.CovidVaccinations vac
On dea.location = vac.location 
and dea.date = vac.date
WHERE dea.continent is not NULL
--ORDER BY 2,3
)
Select *, (RollingPeopleVaccinated/Population)*100
From PopvsVac



-- TEMP TABLE

Drop table if EXISTS #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleVaccinated numeric
) 

Insert into #PercentPopulationVaccinated
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM dbo.Covid dea
JOIN dbo.CovidVaccinations vac
    On dea.location = vac.location 
    and dea.date = vac.date
WHERE dea.continent is not NULL
--ORDER BY 2,3

Select *, (RollingPeopleVaccinated/Population)*100
From #PercentPopulationVaccinated


----- Creating View to store data for later visuallizations

Create View PercentPopulationVaccinated as
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(vac.new_vaccinations) over (Partition by dea.location order by dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100
FROM dbo.Covid dea
JOIN dbo.CovidVaccinations vac
    On dea.location = vac.location 
    and dea.date = vac.date
WHERE dea.continent is not NULL
--ORDER BY 2,3

SELECT *
FROM PercentPopulationVaccinated