.class Lcom/kingroot/kinguser/bjr$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjr$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bys:I

.field final synthetic byt:Lcom/kingroot/kinguser/bjr$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr$1;I)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$1$1;->byt:Lcom/kingroot/kinguser/bjr$1;

    iput p2, p0, Lcom/kingroot/kinguser/bjr$1$1;->bys:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$1$1;->byt:Lcom/kingroot/kinguser/bjr$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjr$1;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->g(Lcom/kingroot/kinguser/bjr;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/bjr$1$1;->bys:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 347
    return-void
.end method
