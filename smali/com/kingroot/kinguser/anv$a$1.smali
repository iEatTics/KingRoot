.class Lcom/kingroot/kinguser/anv$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv$a;->a(Lcom/kingroot/kinguser/anv$a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEt:Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

.field final synthetic aEu:Lcom/kingroot/kinguser/anv$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$a$1;->aEu:Lcom/kingroot/kinguser/anv$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/anv$a$1;->aEt:Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$1;->aEu:Lcom/kingroot/kinguser/anv$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv$a;->a(Lcom/kingroot/kinguser/anv$a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anv$a$1;->aEt:Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/anv$a$1;->aEt:Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    iget v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mID:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$1;->aEu:Lcom/kingroot/kinguser/anv$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv$a;->b(Lcom/kingroot/kinguser/anv$a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18940

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$a$1;->aEu:Lcom/kingroot/kinguser/anv$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv$a;->b(Lcom/kingroot/kinguser/anv$a;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18941

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
