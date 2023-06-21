.class public Lcom/kingroot/kinguser/cay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cay$a;
    }
.end annotation


# instance fields
.field private yl:Lcom/kingroot/kinguser/pe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/caz;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/cay;-><init>()V

    return-void
.end method

.method public static akw()Lcom/kingroot/kinguser/cay;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/cay$a;->aky()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/cbh;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/cbe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/cbh;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-static {p1}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p2}, Lcom/kingroot/kinguser/ccb;->w(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/kingroot/kinguser/pe;

    invoke-direct {v0, p1, p2, p3}, Lcom/kingroot/kinguser/pe;-><init>(Lcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/cbe;Lcom/kingroot/kinguser/cbh;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cay;->yl:Lcom/kingroot/kinguser/pe;

    .line 72
    invoke-static {}, Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;->gn()V

    .line 74
    new-instance v0, Lcom/kingroot/kinguser/af;

    invoke-direct {v0}, Lcom/kingroot/kinguser/af;-><init>()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/af;->gQ:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v1

    const/16 v2, 0x271a

    new-instance v3, Lcom/kingroot/kinguser/op;

    iget-object v4, p0, Lcom/kingroot/kinguser/cay;->yl:Lcom/kingroot/kinguser/pe;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/op;-><init>(Lcom/kingroot/kinguser/pe;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 77
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/r;Lcom/kingroot/kinguser/cbg;)V
    .locals 4

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/caz;

    invoke-direct {v3, p0, p2}, Lcom/kingroot/kinguser/caz;-><init>(Lcom/kingroot/kinguser/cay;Lcom/kingroot/kinguser/cbg;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/x;ILcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cbf;)V
    .locals 8

    .prologue
    .line 110
    move-object v6, p3

    check-cast v6, Lcom/kingroot/kinguser/u;

    .line 111
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, v6, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 112
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 113
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v1, Lcom/kingroot/kinguser/ac;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ac;-><init>()V

    .line 116
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ac;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 118
    iget-object v0, v1, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, v1, Lcom/kingroot/kinguser/ac;->gK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_2
    iget-wide v2, p1, Lcom/kingroot/kinguser/x;->gt:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/x;->gu:J

    move-object v1, p4

    invoke-interface/range {v1 .. v7}, Lcom/kingroot/kinguser/cbf;->b(JJLcom/kingroot/kinguser/u;Ljava/util/List;)V

    goto :goto_0
.end method

.method public akx()Lcom/kingroot/kinguser/pe;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/cay;->yl:Lcom/kingroot/kinguser/pe;

    return-object v0
.end method
