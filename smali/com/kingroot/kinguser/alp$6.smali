.class Lcom/kingroot/kinguser/alp$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayt:I

.field final synthetic ayu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$6;->ayh:Lcom/kingroot/kinguser/alp;

    iput p2, p0, Lcom/kingroot/kinguser/alp$6;->ayt:I

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$6;->ayu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 523
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/alp$6;->ayt:I

    new-instance v2, Lcom/kingroot/kinguser/alp$6$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alp$6$1;-><init>(Lcom/kingroot/kinguser/alp$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(ILcom/kingroot/kinguser/buc;)V

    .line 533
    return-void
.end method
