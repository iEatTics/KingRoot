.class Lcom/kingroot/kinguser/alp$16;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anx:Ljava/lang/String;

.field final synthetic ayQ:J

.field final synthetic ayR:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

.field final synthetic aye:I

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic val$fetchOffset:I

.field final synthetic val$fetchSize:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$16;->ayh:Lcom/kingroot/kinguser/alp;

    iput p2, p0, Lcom/kingroot/kinguser/alp$16;->aye:I

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$16;->anx:Ljava/lang/String;

    iput p4, p0, Lcom/kingroot/kinguser/alp$16;->val$fetchSize:I

    iput p5, p0, Lcom/kingroot/kinguser/alp$16;->val$fetchOffset:I

    iput-wide p6, p0, Lcom/kingroot/kinguser/alp$16;->ayQ:J

    iput-object p8, p0, Lcom/kingroot/kinguser/alp$16;->ayR:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 351
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/alp$16;->aye:I

    iget-object v3, p0, Lcom/kingroot/kinguser/alp$16;->anx:Ljava/lang/String;

    iget v4, p0, Lcom/kingroot/kinguser/alp$16;->val$fetchSize:I

    iget v5, p0, Lcom/kingroot/kinguser/alp$16;->val$fetchOffset:I

    iget-wide v6, p0, Lcom/kingroot/kinguser/alp$16;->ayQ:J

    new-instance v8, Lcom/kingroot/kinguser/alp$16$1;

    invoke-direct {v8, p0}, Lcom/kingroot/kinguser/alp$16$1;-><init>(Lcom/kingroot/kinguser/alp$16;)V

    invoke-virtual/range {v1 .. v8}, Lcom/kingroot/kinguser/btx;->a(ILjava/lang/String;IIJLcom/kingroot/kinguser/bui;)V

    .line 367
    return-void
.end method
