.class Lcom/kingroot/kinguser/axg$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axg;->z(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$12;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/axg$12;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-static {v0}, Lcom/kingroot/kinguser/axg;->b(Lcom/kingroot/kinguser/axg;)V

    .line 329
    return-void
.end method
