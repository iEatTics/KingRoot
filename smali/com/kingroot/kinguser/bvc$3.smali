.class Lcom/kingroot/kinguser/bvc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/kingroot/kinguser/buf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPf:Lcom/kingroot/kinguser/buf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$3;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$3;->bPf:Lcom/kingroot/kinguser/buf;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1067
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 1068
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    if-eqz p1, :cond_4

    .line 1070
    invoke-static {p1}, Lcom/kingroot/kinguser/bus;->kq(I)B

    move-result v0

    .line 1071
    if-nez v0, :cond_3

    .line 1072
    const/4 v0, 0x2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1073
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1076
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$3;->bPf:Lcom/kingroot/kinguser/buf;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/buf;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1101
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$3;->bPf:Lcom/kingroot/kinguser/buf;

    if-eqz v0, :cond_2

    .line 1102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    invoke-static {v2}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$3;->bPf:Lcom/kingroot/kinguser/buf;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/buf;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1118
    :cond_2
    return-void

    .line 1078
    :cond_3
    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1079
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1082
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$3;->bPf:Lcom/kingroot/kinguser/buf;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/buf;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1085
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v3, p0, Lcom/kingroot/kinguser/bvc$3;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v3}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v3

    iget-object v4, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    .line 1091
    const-string v5, "vecsoftinfo"

    .line 1090
    invoke-virtual {v3, v4, v5, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_5

    .line 1093
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1096
    :cond_5
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1097
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1098
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$3;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bvc;->b(Lcom/kingroot/kinguser/bvc;Ljava/util/List;)V

    goto :goto_0

    .line 1107
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;

    .line 1108
    if-eqz v0, :cond_0

    .line 1109
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 1110
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
