.class Lcom/kingroot/kinguser/alp$11;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(JIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayB:J

.field final synthetic ayC:I

.field final synthetic ayD:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic val$fetchOffset:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;JIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$11;->ayh:Lcom/kingroot/kinguser/alp;

    iput-wide p2, p0, Lcom/kingroot/kinguser/alp$11;->ayB:J

    iput p4, p0, Lcom/kingroot/kinguser/alp$11;->val$fetchOffset:I

    iput p5, p0, Lcom/kingroot/kinguser/alp$11;->ayC:I

    iput-object p6, p0, Lcom/kingroot/kinguser/alp$11;->ayD:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/alp$11;->ayB:J

    iget v4, p0, Lcom/kingroot/kinguser/alp$11;->val$fetchOffset:I

    iget v5, p0, Lcom/kingroot/kinguser/alp$11;->ayC:I

    new-instance v6, Lcom/kingroot/kinguser/alp$11$1;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/alp$11$1;-><init>(Lcom/kingroot/kinguser/alp$11;)V

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/btx;->a(JIILcom/kingroot/kinguser/buc;)V

    .line 155
    return-void
.end method
