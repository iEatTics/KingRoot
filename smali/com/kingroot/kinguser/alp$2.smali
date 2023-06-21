.class Lcom/kingroot/kinguser/alp$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->b(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aye:I

.field final synthetic ayf:J

.field final synthetic ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic val$fetchOffset:I

.field final synthetic val$fetchSize:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;IIIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$2;->ayh:Lcom/kingroot/kinguser/alp;

    iput p2, p0, Lcom/kingroot/kinguser/alp$2;->aye:I

    iput p3, p0, Lcom/kingroot/kinguser/alp$2;->val$fetchSize:I

    iput p4, p0, Lcom/kingroot/kinguser/alp$2;->val$fetchOffset:I

    iput-wide p5, p0, Lcom/kingroot/kinguser/alp$2;->ayf:J

    iput-object p7, p0, Lcom/kingroot/kinguser/alp$2;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/alp$2;->aye:I

    iget v2, p0, Lcom/kingroot/kinguser/alp$2;->val$fetchOffset:I

    iget v3, p0, Lcom/kingroot/kinguser/alp$2;->val$fetchSize:I

    new-instance v4, Lcom/kingroot/kinguser/alp$2$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/alp$2$1;-><init>(Lcom/kingroot/kinguser/alp$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/btx;->a(IIILcom/kingroot/kinguser/bue;)V

    .line 419
    return-void
.end method
