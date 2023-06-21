.class Lcom/kingroot/kinguser/bjd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$1;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 136
    if-nez p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$1;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->jn(I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    if-ne p1, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$1;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->a(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjf;->jn(I)V

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1878c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
