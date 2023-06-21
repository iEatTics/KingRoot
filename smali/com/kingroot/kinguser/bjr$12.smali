.class Lcom/kingroot/kinguser/bjr$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBY:I

.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;I)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$12;->byr:Lcom/kingroot/kinguser/bjr;

    iput p2, p0, Lcom/kingroot/kinguser/bjr$12;->aBY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$12;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->h(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bjr$12;->aBY:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 466
    return-void
.end method
