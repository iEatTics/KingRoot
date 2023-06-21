.class Lcom/kingroot/kinguser/awx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awx;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aVY:Lcom/kingroot/kinguser/awx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awx;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/awx$2;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/awx$2;->aVY:Lcom/kingroot/kinguser/awx;

    invoke-static {v0}, Lcom/kingroot/kinguser/awx;->a(Lcom/kingroot/kinguser/awx;)Lcom/kingroot/kinguser/aue$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aue$a;->PI()V

    .line 143
    return-void
.end method
