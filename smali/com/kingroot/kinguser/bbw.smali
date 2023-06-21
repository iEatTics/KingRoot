.class public Lcom/kingroot/kinguser/bbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/shell/IRootShell;


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bbw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bbw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbw;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bbw$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbw;-><init>()V

    return-void
.end method

.method public static WU()Lcom/kingroot/kinguser/bbw;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/bbw;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bbw;

    return-object v0
.end method


# virtual methods
.method public closeShell()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public isRootPermition()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    return v0
.end method

.method public runRootCommand(Ljava/lang/String;)Lcloudsdk/shell/VTCmdResult;
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 45
    new-instance v1, Lcloudsdk/shell/VTCmdResult;

    iget-object v2, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcloudsdk/shell/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public runRootCommand(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;
    .locals 6

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    new-instance v1, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v1, p1, p1, p2, p3}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 51
    new-instance v1, Lcloudsdk/shell/VTCmdResult;

    iget-object v2, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v3, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcloudsdk/shell/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
