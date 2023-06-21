.class public Lcom/kingroot/kinguser/aiq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static arV:Ljava/lang/String;

.field public static arW:Ljava/lang/String;

.field public static arX:Ljava/lang/String;

.field public static arY:Ljava/lang/String;

.field public static arZ:Ljava/lang/String;

.field public static asa:Ljava/lang/String;

.field public static asb:Ljava/lang/String;

.field public static asc:Ljava/lang/String;

.field public static asd:Ljava/lang/String;

.field public static ase:Ljava/lang/String;

.field public static asf:Ljava/lang/String;

.field public static asg:Ljava/lang/String;

.field public static ash:Ljava/lang/String;

.field public static asi:Ljava/lang/String;

.field public static asj:Ljava/lang/String;

.field public static ask:Ljava/lang/String;

.field public static final xV:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 194
    const-string v0, "ku_m_shark"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->arV:Ljava/lang/String;

    .line 199
    const-string v0, "ku_check"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->arW:Ljava/lang/String;

    .line 204
    const-string v0, "root_mgr_suggestion"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->arX:Ljava/lang/String;

    .line 209
    const-string v0, "ku_app_distribution"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    .line 214
    const-string v0, "ku_action"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->arZ:Ljava/lang/String;

    .line 219
    const-string v0, "ku_root_recycler"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    .line 223
    const-string v0, "ku_root_imporve"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asb:Ljava/lang/String;

    .line 228
    const-string v0, "ku_root_security"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asc:Ljava/lang/String;

    .line 233
    const-string v0, "ku_root_process"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    .line 239
    const-string v0, "ku_device_util"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->ase:Ljava/lang/String;

    .line 244
    const-string v0, "ku_silent_mode"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asf:Ljava/lang/String;

    .line 249
    const-string v0, "default_settings"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asg:Ljava/lang/String;

    .line 254
    const-string v0, "ku_external_syncHelper_service"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->ash:Ljava/lang/String;

    .line 256
    const-string v0, "ku_job_manager"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    .line 258
    const-string v0, "ku_TuringMM"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->asj:Ljava/lang/String;

    .line 261
    const-string v0, "ku_risk_dump"

    sput-object v0, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    .line 266
    const/16 v0, 0x3a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "common"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k_framework"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ku_application"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "all_jump_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "anti_inject_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anti_repackage_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "auto_repl_flag_"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ku_buildin_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "check_su_files_"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cl_clean_"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ku_dr_"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ku_external_root_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "k_framework_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iscan_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "king_loader_"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ktools_"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "su_request_"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "wl_mgr_"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ku_utils_"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ku_receiver_"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ku_m_cleaner_"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ku_statistics_"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ku_ui_"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ku_cloud_list_"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ku_cloud_cmd_"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ku_auto_start_"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ku_update_"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ku_root"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ku_download"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ku_page"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ku_gamebox"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ku_service_"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "ku_activity_"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "plugin_server"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ku_examination"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ku_test"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ku_cloud_check"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "anti_360s"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "kCompetitor_Risk"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/kingroot/kinguser/aiq;->arV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/kingroot/kinguser/aiq;->arW:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/kingroot/kinguser/aiq;->arX:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/kingroot/kinguser/aiq;->arZ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ku_silentcheck"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ku_riskAppBan"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/kingroot/kinguser/aiq;->ase:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asf:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "ui_skin"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/kingroot/kinguser/aiq;->ash:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "plugin_upgrade_"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/kingroot/kinguser/aiq;->asj:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/aiq;->xV:[Ljava/lang/String;

    return-void
.end method
