.class Lcom/kingroot/kinguser/bvc$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(JIILcom/kingroot/kinguser/bua;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPn:Lcom/kingroot/kinguser/bvp;

.field private final synthetic bPo:Lcom/kingroot/kinguser/bua;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/bua;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$14;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$14;->bPn:Lcom/kingroot/kinguser/bvp;

    iput-object p3, p0, Lcom/kingroot/kinguser/bvc$14;->bPo:Lcom/kingroot/kinguser/bua;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 6

    .prologue
    .line 881
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 882
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;-><init>()V

    .line 885
    if-eqz p1, :cond_2

    .line 886
    invoke-static {p1}, Lcom/kingroot/kinguser/bus;->kq(I)B

    move-result v0

    .line 887
    if-nez v0, :cond_1

    .line 888
    const/4 v0, 0x2

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 889
    iput p1, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$14;->bPo:Lcom/kingroot/kinguser/bua;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$14;->bPo:Lcom/kingroot/kinguser/bua;

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/bua;->a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;)V

    .line 913
    :cond_0
    return-void

    .line 893
    :cond_1
    const/4 v0, 0x1

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 894
    iput p1, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    goto :goto_0

    .line 899
    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;-><init>()V

    .line 900
    iget-object v3, p0, Lcom/kingroot/kinguser/bvc$14;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v3}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$14;->bPn:Lcom/kingroot/kinguser/bvp;

    iget-object v4, v4, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    .line 901
    const-string v5, "hotwordres"

    .line 900
    invoke-virtual {v3, v4, v5, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 902
    if-eqz v1, :cond_3

    .line 903
    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordResInfo;

    .line 905
    :goto_1
    const/4 v1, 0x0

    iput v1, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 906
    iput p1, v2, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
