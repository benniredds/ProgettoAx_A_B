USING Siemens.Simatic.S71500.Tasks;

CONFIGURATION Cfg
    TASK MyStartupTask : Startup;
    TASK MyProgramCycleTask : ProgramCycle;

    PROGRAM P1 WITH MyStartupTask : MyProgramStartup;
    PROGRAM P2 WITH MyProgramCycleTask : MyProgramMain;

        VAR_GLOBAL

            myOutput AT %Q0.0 : BOOL;
            myRealOutput AT %QW2 : INT;
        
        END_VAR

END_CONFIGURATION


