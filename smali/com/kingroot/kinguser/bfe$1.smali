.class Lcom/kingroot/kinguser/bfe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfe;->ZE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmn:Lcom/kingroot/kinguser/bfe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfe;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/bfe$1;->bmn:Lcom/kingroot/kinguser/bfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yl()Ljava/lang/String;

    move-result-object v1

    .line 51
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 57
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "pm enable %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 63
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yi()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ds()V

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18746

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 73
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bar;->VJ()V

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    goto :goto_0
.end method
