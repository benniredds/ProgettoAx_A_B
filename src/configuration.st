USING Siemens.Simatic.S71500.Tasks;

CONFIGURATION Cfg
    TASK MyStartupTask : Startup;
    TASK MyProgramCycleTask : ProgramCycle;

    PROGRAM P1 WITH MyStartupTask : MyProgramStartup;
    PROGRAM P2 WITH MyProgramCycleTask : MyProgramMain;

END_CONFIGURATION