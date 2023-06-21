.class Lcom/kingroot/kinguser/axm$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Uv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$10;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1185
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1186
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    .line 1187
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1188
    invoke-static {}, Lcom/kingroot/kinguser/aij;->xR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1190
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/axm$10$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$10$1;-><init>(Lcom/kingroot/kinguser/axm$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1211
    :goto_0
    return-void

    .line 1198
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/axm$10$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/axm$10$2;-><init>(Lcom/kingroot/kinguser/axm$10;Z)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
