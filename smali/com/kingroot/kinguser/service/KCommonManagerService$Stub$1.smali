.class Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->asyncOpenAntiInjectFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bja:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;->bja:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1$1;-><init>(Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 128
    return-void
.end method
