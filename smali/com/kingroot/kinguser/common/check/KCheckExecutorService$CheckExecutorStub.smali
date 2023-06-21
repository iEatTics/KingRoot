.class Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;
.super Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/KCheckExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckExecutorStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/ICheckExecuteService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/common/check/KCheckExecutorService$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/common/check/KCheckExecutorService$CheckExecutorStub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/ajc;->yX()Lcom/kingroot/kinguser/ajc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ajc;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    .line 43
    return-void
.end method

.method public checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/ajc;->yX()Lcom/kingroot/kinguser/ajc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/ajc;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public delayCheckAgain()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ajc;->yX()Lcom/kingroot/kinguser/ajc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajc;->delayCheckAgain()V

    .line 48
    return-void
.end method
