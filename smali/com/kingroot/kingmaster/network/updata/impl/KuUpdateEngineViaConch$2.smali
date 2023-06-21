.class public Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$2;
.super Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aek;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aek;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$2;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckEvent(I)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$2;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 424
    return-void
.end method

.method public onCheckStarted()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method
