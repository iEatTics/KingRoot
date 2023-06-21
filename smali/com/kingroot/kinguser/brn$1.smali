.class Lcom/kingroot/kinguser/brn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brn;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKi:Lcom/kingroot/kinguser/brn;

.field private final synthetic bKj:Lcom/kingroot/kinguser/brq$b;

.field private final synthetic bKk:Lcom/tencent/qqpim/discovery/AdRequestData;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brn;Lcom/kingroot/kinguser/brq$b;Lcom/tencent/qqpim/discovery/AdRequestData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brn$1;->bKi:Lcom/kingroot/kinguser/brn;

    iput-object p2, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iput-object p3, p0, Lcom/kingroot/kinguser/brn$1;->bKk:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v7, 0x0

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    invoke-interface {v0, v3, v2}, Lcom/kingroot/kinguser/brn$a;->a(Landroid/util/SparseArray;I)V

    .line 109
    :goto_0
    return-void

    .line 53
    :cond_0
    check-cast p2, Lcom/kingroot/kinguser/bta;

    .line 54
    if-nez p2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    invoke-interface {v0, v3, v2}, Lcom/kingroot/kinguser/brn$a;->a(Landroid/util/SparseArray;I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p2, Lcom/kingroot/kinguser/bta;->bMx:Ljava/util/ArrayList;

    .line 62
    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    invoke-interface {v0, v3, v2}, Lcom/kingroot/kinguser/brn$a;->a(Landroid/util/SparseArray;I)V

    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/brn$a;->c(Landroid/util/SparseArray;)V

    .line 106
    const-string v0, "shark_onCallback() end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/brn$1;->bKj:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    invoke-interface {v0, v2, v7}, Lcom/kingroot/kinguser/brn$a;->a(Landroid/util/SparseArray;I)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdNetMgr_getAds() End:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/brn$1;->bKk:Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-virtual {v1}, Lcom/tencent/qqpim/discovery/AdRequestData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " latch.errorcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btb;

    .line 73
    iget v1, v0, Lcom/kingroot/kinguser/btb;->ret:I

    if-nez v1, :cond_3

    .line 76
    iget v4, v0, Lcom/kingroot/kinguser/btb;->bJp:I

    .line 77
    iget-object v1, v0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    invoke-static {v4, v7}, Lcom/kingroot/kinguser/bro;->I(IZ)V

    .line 79
    const v0, 0x1d4c0

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/bro;->ap(II)V

    goto :goto_1

    .line 82
    :cond_5
    iget-object v1, v0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v5, p0, Lcom/kingroot/kinguser/brn$1;->bKk:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v5, v5, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    if-lt v1, v5, :cond_8

    .line 83
    const/4 v1, 0x1

    invoke-static {v4, v1}, Lcom/kingroot/kinguser/bro;->I(IZ)V

    .line 87
    :goto_2
    const v1, 0x36ee80

    invoke-static {v4, v1}, Lcom/kingroot/kinguser/bro;->ap(II)V

    .line 90
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    if-nez v1, :cond_6

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_6
    iget-object v0, v0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btc;

    .line 97
    iget-object v6, p0, Lcom/kingroot/kinguser/brn$1;->bKi:Lcom/kingroot/kinguser/brn;

    invoke-virtual {v6, v0, v4}, Lcom/kingroot/kinguser/brn;->a(Lcom/kingroot/kinguser/btc;I)Lcom/kingroot/kinguser/bso;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 85
    :cond_8
    invoke-static {v4, v7}, Lcom/kingroot/kinguser/bro;->I(IZ)V

    goto :goto_2
.end method
