.class Lcom/kingroot/kinguser/axc$8$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axc$8;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXy:Lcom/kingroot/kinguser/axc$8;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axc$8;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/kingroot/kinguser/axc$8$1;->aXy:Lcom/kingroot/kinguser/axc$8;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 396
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->downloadWeSecure()V

    .line 397
    return-void
.end method
