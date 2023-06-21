.class Lcom/kingroot/kinguser/bga$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->wC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$13;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 332
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bfw;->dS(Z)V

    .line 334
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/kingroot/kinguser/bfp;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$13;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$13;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v4, v2, v2}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704fb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method
