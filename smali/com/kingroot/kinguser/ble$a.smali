.class Lcom/kingroot/kinguser/ble$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/tv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bzJ:Lcom/kingroot/kinguser/ble;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/ble;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kingroot/kinguser/ble$a;->bzJ:Lcom/kingroot/kinguser/ble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ble;Lcom/kingroot/kinguser/ble$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ble$a;-><init>(Lcom/kingroot/kinguser/ble;)V

    return-void
.end method


# virtual methods
.method public a(IID)V
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->b(D)V

    .line 225
    return-void
.end method

.method public a(IIJZ)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->L(J)V

    .line 171
    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;J)V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/kingroot/kinguser/vz;->e(Ljava/lang/String;J)V

    .line 178
    return-void
.end method

.method public b(IIJ)V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->J(J)V

    .line 184
    return-void
.end method

.method public b(Ljava/lang/String;IJ)V
    .locals 7

    .prologue
    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v1

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/vz;->a(Ljava/lang/String;IJI)V

    .line 231
    return-void
.end method

.method public c(IIJ)V
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->K(J)V

    .line 192
    return-void
.end method

.method public c(Ljava/lang/String;IJ)V
    .locals 7

    .prologue
    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v1

    const/4 v6, 0x2

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/vz;->a(Ljava/lang/String;IJI)V

    .line 237
    return-void
.end method

.method public d(III)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 201
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/vz;->bD(I)V

    .line 203
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/vz;->bC(I)V

    .line 206
    :cond_1
    return-void
.end method

.method public d(IIJ)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->N(J)V

    .line 212
    return-void
.end method

.method public e(IIJ)V
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/kingroot/kinguser/vz;->M(J)V

    .line 218
    return-void
.end method

.method public u(II)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vz;->mS()V

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kd()V

    .line 141
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vz;->mW()V

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/tw;->kd()V

    .line 146
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/vz;->mQ()Lcom/kingroot/kinguser/vz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vz;->mY()V

    .line 149
    :cond_2
    return-void
.end method

.method public v(II)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/ble$a;->bzJ:Lcom/kingroot/kinguser/ble;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/ble;->a(Lcom/kingroot/kinguser/ble;I)V

    .line 158
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/ble$a;->bzJ:Lcom/kingroot/kinguser/ble;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/ble;->b(Lcom/kingroot/kinguser/ble;I)V

    .line 161
    :cond_1
    return-void
.end method
