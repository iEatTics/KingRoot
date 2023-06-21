.class Lcom/kingroot/kinguser/ano$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ano;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCG:Lcom/kingroot/kinguser/ano;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ano;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/ano$2;->aCG:Lcom/kingroot/kinguser/ano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/ano$2;->aCG:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppSearchActivity;->aK(Landroid/content/Context;)V

    .line 55
    return-void
.end method
