.class public final Lcom/king/uranus/n;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic wd:Z


# instance fields
.field public aX:Ljava/lang/String;

.field public aY:I

.field public aZ:Ljava/lang/String;

.field public ba:Ljava/lang/String;

.field public bb:Ljava/lang/String;

.field public bc:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/king/uranus/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/king/uranus/n;->wd:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/king/uranus/n;->aY:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->a(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->b(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->c(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->d(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->e(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/king/uranus/n;->aY:I

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->a(I)V

    .line 154
    iget-object v0, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->f(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->g(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->h(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->i(Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/king/uranus/n;->aY:I

    .line 104
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p1, v2, v1}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->a(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, v1, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->b(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->c(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->d(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->e(Ljava/lang/String;)V

    .line 272
    iget v0, p0, Lcom/king/uranus/n;->aY:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->a(I)V

    .line 274
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->f(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->g(Ljava/lang/String;)V

    .line 278
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->h(Ljava/lang/String;)V

    .line 280
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/king/uranus/n;->i(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 224
    iget-object v0, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 240
    :cond_3
    iget v0, p0, Lcom/king/uranus/n;->aY:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 241
    iget-object v0, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 257
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :cond_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 216
    sget-boolean v1, Lcom/king/uranus/n;->wd:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    check-cast p1, Lcom/king/uranus/n;

    .line 183
    iget-object v1, p0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget v1, p0, Lcom/king/uranus/n;->aY:I

    iget v2, p1, Lcom/king/uranus/n;->aY:I

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    iget-object v2, p1, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ms;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/king/uranus/n;->bb:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    .line 144
    return-void
.end method
