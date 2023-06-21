.class public Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;,
        Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;,
        Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;
    }
.end annotation


# static fields
.field public static ERROR_NONE:I

.field public static agA:I

.field public static agB:I

.field public static agC:I

.field public static agD:I

.field public static agE:I

.field public static agF:I

.field public static agG:I

.field public static agH:I

.field public static agI:I

.field public static agJ:I

.field public static agK:I

.field public static agL:I

.field public static agM:I

.field public static agN:I

.field public static agO:I

.field public static agP:I

.field public static agQ:I

.field public static agR:I

.field public static agS:I

.field public static agT:I

.field public static agU:I

.field public static agV:I

.field public static agW:I

.field private static final agf:Ljava/lang/String;

.field private static final agg:Ljava/lang/String;

.field private static final agh:Ljava/lang/String;

.field private static final agi:Ljava/lang/String;

.field private static final agj:Ljava/lang/String;

.field private static final agk:Ljava/lang/String;

.field private static final agl:Ljava/lang/String;

.field private static final agm:Ljava/lang/String;

.field private static final agn:Ljava/lang/String;

.field private static final ago:Ljava/lang/String;

.field private static final agp:Ljava/lang/String;

.field public static agz:I


# instance fields
.field private agq:Ljava/lang/String;

.field private agr:I

.field private ags:Ljava/lang/String;

.field private agt:Ljava/lang/String;

.field private agu:Ljava/lang/String;

.field private agv:Ljava/lang/String;

.field private agw:Ljava/lang/String;

.field private agx:Z

.field private agy:Ljava/lang/String;

.field private isUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "busybox "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tar -chf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agg:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tar -xf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agh:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chown -R %d:%d "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agi:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rm -R "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agk:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cp -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agm:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agl:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chmod %s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agj:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mv %s %s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agn:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chmod -R 755 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ago:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KingMaster"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Cleaner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agp:Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    .line 269
    const/4 v0, -0x1

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agz:I

    .line 272
    const/4 v0, 0x1

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agA:I

    .line 275
    const/4 v0, 0x2

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agB:I

    .line 278
    const/4 v0, 0x3

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agC:I

    .line 281
    const/4 v0, 0x4

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agD:I

    .line 284
    const/4 v0, 0x5

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agE:I

    .line 287
    const/4 v0, 0x6

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agF:I

    .line 290
    const/4 v0, 0x7

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agG:I

    .line 293
    const/16 v0, 0x8

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agH:I

    .line 296
    const/16 v0, 0x9

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    .line 299
    const/16 v0, 0xa

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agJ:I

    .line 302
    const/16 v0, 0xb

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agK:I

    .line 305
    const/16 v0, 0xc

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agL:I

    .line 308
    const/16 v0, 0xd

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agM:I

    .line 311
    const/16 v0, 0xe

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agN:I

    .line 314
    const/16 v0, 0xf

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agO:I

    .line 317
    const/16 v0, 0x10

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agP:I

    .line 320
    const/16 v0, 0x11

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agQ:I

    .line 323
    const/16 v0, 0x12

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agR:I

    .line 326
    const/16 v0, 0x13

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agS:I

    .line 329
    const/16 v0, 0x14

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agT:I

    .line 332
    const/16 v0, 0x15

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agU:I

    .line 335
    const/16 v0, 0x16

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agV:I

    .line 338
    const/16 v0, 0x17

    sput v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agp:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    .line 238
    const/16 v0, 0x32

    iput v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agr:I

    .line 346
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    .line 513
    iget-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->isUpdate:Z

    if-eqz v0, :cond_1

    .line 514
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    .line 609
    :cond_0
    :goto_0
    return v2

    .line 517
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "lib"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 522
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ls "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v4

    .line 527
    invoke-virtual {v4}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v5

    if-nez v5, :cond_2

    .line 528
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    goto :goto_0

    .line 532
    :cond_2
    iget-object v5, v4, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "No such file or directory"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 533
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    goto :goto_0

    .line 538
    :cond_3
    iget-object v5, v4, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 539
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    goto :goto_0

    .line 542
    :cond_4
    iget-object v4, v4, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 544
    if-eqz v4, :cond_5

    array-length v4, v4

    if-nez v4, :cond_6

    .line 545
    :cond_5
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    goto/16 :goto_0

    .line 566
    :cond_6
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 568
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 571
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "* "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 582
    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    move v1, v2

    .line 584
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 585
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_9

    .line 606
    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    .line 607
    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0

    .line 584
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 609
    :cond_a
    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agD:I

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_2
.end method

.method private a(Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;I)I
    .locals 9

    .prologue
    .line 453
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 456
    const-string v0, "S01"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    const-string v0, "S08"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "S01"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    const-string v1, "S01"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    const-string v1, "S07"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 466
    :cond_0
    const-string v0, "S04"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    const-string v1, "S09"

    iget-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->isUpdate:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    const-string v0, "S10"

    invoke-static {p4}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 475
    :goto_1
    const-string v0, "S02"

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v1, "S03"

    if-eqz p2, :cond_4

    const-string v0, "1"

    :goto_2
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    .line 502
    :goto_3
    return v0

    .line 467
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 471
    :cond_3
    const-string v0, "S10"

    const-string v1, ""

    invoke-static {v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    :cond_4
    const-string v0, "0"

    goto :goto_2

    .line 486
    :cond_5
    const-string v3, "S05"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 487
    const-string v0, "S06"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    const/4 v1, 0x0

    .line 492
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agv:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :try_start_1
    const-string v1, "cfg."

    invoke-virtual {v2, v0, v1}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 499
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 502
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto :goto_3

    .line 495
    :catch_0
    move-exception v0

    .line 497
    :goto_4
    :try_start_2
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5

    .line 495
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_4
.end method

.method private ay(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1048
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1050
    if-eqz p1, :cond_1

    .line 1051
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v0

    .line 1057
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agv:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private az(Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extract"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1463
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->cz(Ljava/lang/String;)Z

    .line 1466
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1472
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v4

    .line 1473
    invoke-virtual {v4}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    if-eqz p1, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agt:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agt:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1480
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1482
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agh:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " -C "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1491
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    move v1, v2

    .line 1493
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1494
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1504
    :cond_0
    :goto_2
    return v2

    .line 1478
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1493
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private b(Landroid/content/pm/ApplicationInfo;)I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 619
    .line 621
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 622
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 623
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 624
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "odex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 627
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    :cond_0
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agW:I

    .line 672
    :goto_0
    return v0

    .line 630
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_3

    .line 636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -C "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_2
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 651
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    move v1, v2

    .line 653
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 654
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 655
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v5

    if-nez v5, :cond_4

    .line 657
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v1, "No such file or directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 658
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agW:I

    goto/16 :goto_0

    .line 639
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -C "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 653
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    move v2, v3

    .line 669
    :cond_6
    if-eqz v2, :cond_7

    .line 670
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0

    .line 672
    :cond_7
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agC:I

    goto/16 :goto_0
.end method

.method private static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 842
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 843
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 846
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 849
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 851
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 852
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 855
    return-object v0

    .line 846
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private c(Landroid/content/pm/ApplicationInfo;)I
    .locals 6

    .prologue
    .line 682
    .line 684
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    .line 691
    const/4 v1, 0x0

    .line 692
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 693
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 694
    const/4 v0, 0x1

    .line 698
    :goto_0
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agw:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    const/4 v3, 0x0

    .line 701
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 702
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 705
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 706
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 711
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 714
    if-nez v0, :cond_0

    .line 715
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 719
    :cond_0
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    :goto_1
    return v0

    .line 685
    :catch_0
    move-exception v0

    .line 687
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agF:I

    goto :goto_1

    .line 696
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    .line 707
    :catch_1
    move-exception v0

    move-object v1, v3

    .line 709
    :goto_2
    :try_start_3
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agG:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 711
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 707
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static cO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1657
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    const-string v0, ""

    .line 1667
    :goto_0
    return-object v0

    .line 1662
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->B([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1663
    :catch_0
    move-exception v0

    .line 1667
    const-string v0, ""

    goto :goto_0
.end method

.method private static cP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1671
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    const-string v0, ""

    .line 1681
    :goto_0
    return-object v0

    .line 1676
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/aab;->dI(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1681
    const-string v0, ""

    goto :goto_0
.end method

.method private eR(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1219
    .line 1221
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 1222
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm install -r "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 1225
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1228
    :cond_0
    return v0
.end method

.method private eS(Ljava/lang/String;)I
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1247
    .line 1249
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 1250
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "app"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "odex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1253
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1254
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1256
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    sget-object v8, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "-1.apk"

    const-string v10, ".apk"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "-2.apk"

    const-string v10, ".apk"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1261
    const-string v8, ".apk"

    const-string v9, "-1.apk"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agj:Ljava/lang/String;

    new-array v11, v3, [Ljava/lang/Object;

    const-string v12, "644"

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agi:Ljava/lang/String;

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1267
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agl:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agj:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "644"

    aput-object v10, v9, v2

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agi:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    :cond_0
    sget-object v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agn:Ljava/lang/String;

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v8, v4, v2

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1278
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    move v1, v2

    .line 1280
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1281
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    const-string v5, "chown -R"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1292
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 1293
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    .line 1295
    :goto_2
    return v0

    .line 1280
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1295
    :cond_3
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agK:I

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private eT(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1303
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 1307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/data/app-lib/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/data/app-lib/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    .line 1320
    :cond_0
    return-void
.end method

.method private eU(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1350
    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/data/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1354
    const-string v5, "/system/lib/"

    .line 1357
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1361
    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return v2

    .line 1365
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1366
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v7

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cd "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "No such file or directory"

    .line 1374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v2

    .line 1378
    :goto_1
    invoke-virtual {v7}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agm:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_5

    move-object v3, v4

    :goto_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1382
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    if-eqz v0, :cond_6

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ago:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1390
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    :cond_3
    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1400
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    move v3, v2

    .line 1402
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1403
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    :cond_4
    :goto_4
    move v2, v1

    .line 1414
    goto/16 :goto_0

    :cond_5
    move-object v3, v5

    .line 1380
    goto :goto_2

    .line 1392
    :cond_6
    array-length v3, v6

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_3

    aget-object v4, v6, v0

    .line 1393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agj:Ljava/lang/String;

    new-array v11, v1, [Ljava/lang/Object;

    const-string v12, "755"

    aput-object v12, v11, v2

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1402
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method private eV(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1424
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 1429
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1431
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1434
    const-string v3, "S01"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "S02"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "S03"

    .line 1435
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_1

    .line 1449
    :cond_0
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 1452
    :goto_0
    return-object v0

    .line 1440
    :cond_1
    :try_start_2
    const-string v3, "S01"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "S07"

    .line 1441
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    if-nez v3, :cond_2

    .line 1449
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 1445
    goto :goto_0

    .line 1446
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 1449
    :goto_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1446
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static eW(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1579
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1581
    new-instance v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;-><init>(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$1;)V

    .line 1582
    iput-boolean v3, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->mFinished:Z

    .line 1585
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1587
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageSizeInfo"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/pm/IPackageStatsObserver;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1589
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const v6, 0x186a0

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1605
    :goto_0
    monitor-enter v1

    .line 1606
    :goto_1
    :try_start_1
    iget-boolean v0, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->mFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1608
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1609
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1590
    :catch_1
    move-exception v0

    .line 1592
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 1615
    :goto_2
    return-object v0

    .line 1596
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPackageSizeInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageStatsObserver;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1597
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1598
    :catch_2
    move-exception v0

    .line 1600
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p0}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1613
    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1615
    invoke-virtual {v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->getStats()Landroid/content/pm/PackageStats;

    move-result-object v0

    goto :goto_2

    .line 1613
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private i(Ljava/lang/String;J)I
    .locals 4

    .prologue
    .line 795
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 796
    :cond_0
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agH:I

    .line 824
    :goto_0
    return v0

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ja()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    .line 803
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 806
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 809
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 812
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 814
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 818
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apk."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agt:Ljava/lang/String;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cfg."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agv:Ljava/lang/String;

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agw:Ljava/lang/String;

    .line 824
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0
.end method

.method public static ja()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1568
    invoke-static {}, Lcom/kingroot/kinguser/ru;->ja()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1186
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 1189
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1199
    if-nez v0, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return v2

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v1

    .line 1196
    goto :goto_0

    .line 1201
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    .line 1202
    invoke-static {p1}, Lcom/kingroot/kinguser/aff;->eY(Ljava/lang/String;)I

    move-result v0

    .line 1211
    :goto_1
    sget v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 1204
    :cond_2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 1205
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->d(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    goto :goto_1

    .line 1207
    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fb(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1211
    goto :goto_2
.end method

.method private n(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1329
    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1330
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 1332
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    const/4 v0, 0x1

    .line 1342
    :cond_0
    return v0

    .line 1334
    :catch_0
    move-exception v2

    .line 1336
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1329
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private uO()Z
    .locals 3

    .prologue
    .line 727
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agt:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cz(Ljava/lang/String;)Z

    .line 746
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 748
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 753
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cz(Ljava/lang/String;)Z

    .line 760
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agv:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 763
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 764
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5

    .line 769
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 770
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_7

    .line 771
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 777
    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agw:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 779
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 784
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method private static uP()V
    .locals 1

    .prologue
    .line 863
    const-string v0, "backup_util"

    invoke-static {v0}, Lcom/kingroot/kinguser/zk;->dw(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private static uQ()V
    .locals 2

    .prologue
    .line 871
    const v0, 0x20000001

    const-string v1, "backup_util"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->y(ILjava/lang/String;)V

    .line 872
    return-void
.end method

.method private uS()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1513
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1516
    if-eqz v3, :cond_0

    array-length v1, v3

    if-nez v1, :cond_1

    .line 1528
    :cond_0
    :goto_0
    return-object v0

    .line 1521
    :cond_1
    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 1522
    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1521
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/pm/PackageInfo;ILjava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 380
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uQ()V

    .line 381
    iput-boolean v4, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    .line 382
    iput-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->isUpdate:Z

    .line 383
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/aew;->uN()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agA:I

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    .line 389
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->i(Ljava/lang/String;J)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v2, :cond_0

    .line 395
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 396
    iput-boolean v4, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->isUpdate:Z

    .line 397
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->b(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v2, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    .line 404
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agS:I

    goto :goto_0

    .line 408
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    :cond_4
    :goto_1
    invoke-direct {p0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->b(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v2, :cond_5

    .line 415
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    goto :goto_0

    .line 421
    :cond_5
    invoke-direct {p0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v2, :cond_6

    .line 422
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    goto :goto_0

    .line 428
    :cond_6
    iget-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agx:Z

    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;I)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v2, :cond_7

    .line 429
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    goto :goto_0

    .line 434
    :cond_7
    invoke-direct {p0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->c(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    sget v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v1, :cond_8

    .line 435
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    goto :goto_0

    .line 439
    :cond_8
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uP()V

    .line 440
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0

    .line 409
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;ZLcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I
    .locals 4

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ja()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    .line 1076
    :cond_0
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uQ()V

    .line 1078
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    .line 1082
    invoke-static {}, Lcom/kingroot/kinguser/aew;->uN()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agA:I

    .line 1177
    :cond_1
    :goto_0
    return v0

    .line 1084
    :cond_2
    if-nez p1, :cond_3

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agJ:I

    goto :goto_0

    .line 1086
    :cond_3
    iget-boolean v1, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    .line 1089
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    invoke-direct {p0, v0, v2, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->i(Ljava/lang/String;J)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v2, :cond_1

    .line 1092
    invoke-direct {p0, v1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ay(Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    goto :goto_0

    .line 1094
    :cond_4
    if-nez p2, :cond_5

    .line 1095
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1096
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agT:I

    goto :goto_0

    .line 1101
    :cond_5
    if-eqz p2, :cond_6

    .line 1102
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agr:I

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->m(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1103
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agU:I

    goto :goto_0

    .line 1118
    :cond_6
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eT(Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agv:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eV(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v2

    .line 1121
    if-nez v2, :cond_7

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    goto :goto_0

    .line 1128
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->az(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1130
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iW()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_8

    .line 1131
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agV:I

    goto :goto_0

    .line 1133
    :cond_8
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agP:I

    goto :goto_0

    .line 1136
    :cond_9
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uS()Ljava/lang/String;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_a

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agP:I

    goto :goto_0

    .line 1140
    :cond_b
    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eS(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v3, :cond_1

    .line 1143
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agr:I

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->n(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1144
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agK:I

    goto/16 :goto_0

    .line 1147
    :cond_c
    const-string v0, "S09"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->az(Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1151
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iW()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 1152
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agV:I

    goto/16 :goto_0

    .line 1154
    :cond_d
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agP:I

    goto/16 :goto_0

    .line 1158
    :cond_e
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uS()Ljava/lang/String;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_f

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agP:I

    goto/16 :goto_0

    .line 1161
    :cond_10
    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eR(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agL:I

    goto/16 :goto_0

    .line 1164
    :cond_11
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1168
    :cond_12
    if-eqz v1, :cond_13

    .line 1169
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1174
    :cond_13
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z

    .line 1175
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uP()V

    .line 1177
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ja()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    .line 358
    :cond_0
    const/4 v0, 0x0

    .line 360
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    if-nez v0, :cond_1

    .line 366
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agB:I

    .line 368
    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Landroid/content/pm/PackageInfo;ILjava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$b;)I

    move-result v0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)I
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/16 v7, 0x2e

    .line 972
    const-string v0, "cfg."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    const-string v0, "cfg."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 980
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-direct {p0, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->eV(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v4

    .line 984
    if-nez v4, :cond_2

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    .line 1036
    :cond_0
    :goto_0
    return v0

    .line 975
    :cond_1
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agz:I

    goto :goto_0

    .line 985
    :cond_2
    const-string v5, "S02"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mAppName:Ljava/lang/String;

    .line 986
    const-string v5, "S03"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    .line 987
    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    .line 988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "icon."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agY:Ljava/lang/String;

    .line 989
    const-string v2, "S01"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->aha:Z

    .line 990
    const-string v2, "S10"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->cP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->Bk:Ljava/lang/String;

    .line 992
    :try_start_0
    const-string v2, "S04"

    const-string v5, "0"

    invoke-virtual {v4, v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahc:I

    .line 993
    const-string v2, "S08"

    const-string v5, "0"

    invoke-virtual {v4, v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->classify:I

    .line 994
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    iget-object v0, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iget-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    invoke-direct {p0, v0, v6, v7}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->i(Ljava/lang/String;J)I

    move-result v0

    sget v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v2, :cond_0

    .line 1003
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ags:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agI:I

    goto/16 :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agz:I

    goto/16 :goto_0

    .line 1008
    :cond_3
    :try_start_1
    const-string v2, "S05"

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agY:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1033
    iput-object v1, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agY:Ljava/lang/String;

    .line 1036
    :cond_4
    sget v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    goto/16 :goto_0

    .line 1010
    :catch_1
    move-exception v2

    .line 1011
    iget-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    .line 1013
    const-string v0, "S05"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1015
    :cond_5
    iget-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahe:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    .line 1017
    const-string v0, "S06"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahe:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1023
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    :try_start_3
    const-string v2, "cfg."

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1028
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1026
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 1028
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    .line 1026
    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z
    .locals 4

    .prologue
    .line 1538
    iget-object v0, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    invoke-direct {p0, v0, v2, v3}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->i(Ljava/lang/String;J)I

    move-result v0

    sget v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-eq v0, v1, :cond_0

    .line 1539
    const/4 v0, 0x0

    .line 1543
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uO()Z

    move-result v0

    goto :goto_0
.end method

.method public uR()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 905
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 907
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ja()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    .line 912
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->agq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 918
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Lcom/kingroot/kinguser/yv;->f([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_6

    aget-object v0, v4, v1

    .line 923
    new-instance v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    invoke-direct {v6}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;-><init>()V

    .line 924
    invoke-virtual {p0, v0, v6}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Ljava/lang/String;Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)I

    move-result v0

    sget v7, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->ERROR_NONE:I

    if-ne v0, v7, :cond_1

    .line 925
    iget-object v0, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    .line 927
    if-nez v0, :cond_2

    .line 928
    iget-object v0, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 931
    :cond_2
    iget-boolean v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    iget-boolean v8, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    xor-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 932
    iget-boolean v7, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    if-eqz v7, :cond_3

    .line 933
    invoke-virtual {p0, v6}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z

    goto :goto_1

    .line 935
    :cond_3
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z

    .line 936
    iget-object v0, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 940
    :cond_4
    iget-wide v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    iget-wide v10, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    .line 941
    invoke-virtual {p0, v6}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z

    goto :goto_1

    .line 943
    :cond_5
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z

    .line 944
    iget-object v0, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 953
    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 954
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 955
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 956
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 959
    :cond_7
    return-object v2
.end method
