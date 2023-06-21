.class Lcom/kingroot/kinguser/awx$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awx$a;-><init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWh:Lcom/kingroot/kinguser/awx;

.field final synthetic aWi:Lcom/kingroot/kinguser/awx$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awx$a;Lcom/kingroot/kinguser/awx;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$a$1;->aWi:Lcom/kingroot/kinguser/awx$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/awx$a$1;->aWh:Lcom/kingroot/kinguser/awx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a$1;->aWi:Lcom/kingroot/kinguser/awx$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/awx$a;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v0}, Lcom/kingroot/kinguser/awx;->f(Lcom/kingroot/kinguser/awx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$a$1;->aWi:Lcom/kingroot/kinguser/awx$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/awx$a;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v0}, Lcom/kingroot/kinguser/awx;->a(Lcom/kingroot/kinguser/awx;)Lcom/kingroot/kinguser/aue$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awx$a$1;->aWi:Lcom/kingroot/kinguser/awx$a;

    iget v1, v1, Lcom/kingroot/kinguser/awx$a;->type:I

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aue$a;->gJ(I)V

    goto :goto_0
.end method
