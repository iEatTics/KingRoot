.class Lcom/kingroot/kinguser/agh$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/agh$d;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ama:Lcom/kingroot/kinguser/agh$k;

.field final synthetic amb:Lcom/kingroot/kinguser/agh$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/agh$d;Lcom/kingroot/kinguser/agh$k;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$d$1;->amb:Lcom/kingroot/kinguser/agh$d;

    iput-object p2, p0, Lcom/kingroot/kinguser/agh$d$1;->ama:Lcom/kingroot/kinguser/agh$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d$1;->ama:Lcom/kingroot/kinguser/agh$k;

    iget-object v1, p0, Lcom/kingroot/kinguser/agh$d$1;->amb:Lcom/kingroot/kinguser/agh$d;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/agh$d;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->c(Landroid/view/View;I)V

    .line 647
    return-void
.end method
