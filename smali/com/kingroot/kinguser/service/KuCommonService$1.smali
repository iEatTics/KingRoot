.class Lcom/kingroot/kinguser/service/KuCommonService$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/service/KuCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bjh:Lcom/kingroot/kinguser/service/KuCommonService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/service/KuCommonService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/service/KuCommonService$1;->bjh:Lcom/kingroot/kinguser/service/KuCommonService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 146
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bhe;->ec(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method
