.class final Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/examination/service/CloudCheckService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected NE()Lcom/kingroot/kinguser/examination/service/CloudCheckService;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;-><init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;)V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;->NE()Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    move-result-object v0

    return-object v0
.end method
