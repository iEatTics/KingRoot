.class final Lcom/kingroot/kinguser/vc$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/kingroot/kinguser/vc$a;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vc$1;->li()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected li()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/vc$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    sget-object v3, Lcom/kingroot/kinguser/vc;->Kc:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    sget-object v3, Lcom/kingroot/kinguser/vc;->Kd:Ljava/lang/String;

    invoke-direct {v2, v5, v3}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    sget-object v3, Lcom/kingroot/kinguser/vc;->Ke:Ljava/lang/String;

    invoke-direct {v2, v6, v3}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    sget-object v3, Lcom/kingroot/kinguser/vc;->Kf:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    sget-object v3, Lcom/kingroot/kinguser/vc;->Kg:Ljava/lang/String;

    invoke-direct {v2, v8, v3}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/4 v3, 0x7

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kh:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x8

    sget-object v4, Lcom/kingroot/kinguser/vc;->Ki:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x9

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kj:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0xa

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kk:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0xb

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0xc

    sget-object v4, Lcom/kingroot/kinguser/vc;->Km:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0xd

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kn:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0xf

    sget-object v4, Lcom/kingroot/kinguser/vc;->Ko:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x10

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kp:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x11

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kq:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x12

    sget-object v4, Lcom/kingroot/kinguser/vc;->Kr:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/vc$a;

    const/16 v3, 0x13

    const-string v4, "securereport|reportSoftUseInfo"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v0
.end method
