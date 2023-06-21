.class Lcom/kingroot/kinguser/atm$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$24;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$24;->this$0:Lcom/kingroot/kinguser/atm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;Z)V

    .line 424
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187b5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 426
    return-void
.end method
