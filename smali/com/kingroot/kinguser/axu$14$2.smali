.class Lcom/kingroot/kinguser/axu$14$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bce:Lcom/kingroot/kinguser/axu$14;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu$14;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$14$2;->bce:Lcom/kingroot/kinguser/axu$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18897

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$14$2;->bce:Lcom/kingroot/kinguser/axu$14;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu$14;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aul$a;->cX(Z)V

    .line 369
    return-void
.end method
