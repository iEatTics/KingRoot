.class Lcom/kingroot/kinguser/biv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/biv;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$4;->buY:Lcom/kingroot/kinguser/biv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$4;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->c(Lcom/kingroot/kinguser/biv;)V

    .line 127
    return-void
.end method
