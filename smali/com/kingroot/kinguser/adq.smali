.class public abstract Lcom/kingroot/kinguser/adq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/adq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/adq;",
        ">;"
    }
.end annotation


# instance fields
.field public adr:Ljava/lang/String;

.field public ads:I

.field protected adt:Lcom/kingroot/kinguser/adq$a;

.field public mId:J

.field mPosition:I

.field protected mState:I

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/adq;)I
    .locals 2

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/adq;->mPosition:I

    iget v1, p1, Lcom/kingroot/kinguser/adq;->mPosition:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/adq$a;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kingroot/kinguser/adq;->adt:Lcom/kingroot/kinguser/adq$a;

    .line 148
    return-void
.end method

.method public cB(I)Lcom/kingroot/kinguser/adq;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/kingroot/kinguser/adq;->mPosition:I

    .line 135
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adq;->sW()Lcom/kingroot/kinguser/adq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/kingroot/kinguser/adq;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/adq;->a(Lcom/kingroot/kinguser/adq;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/kingroot/kinguser/adq;

    if-nez v0, :cond_0

    .line 188
    :cond_0
    return v1
.end method

.method public abstract onStart()V
.end method

.method public abstract sT()V
.end method

.method public abstract sU()V
.end method

.method public sV()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public sW()Lcom/kingroot/kinguser/adq;
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 196
    iget-wide v2, p0, Lcom/kingroot/kinguser/adq;->mId:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/adq;->mId:J

    .line 197
    iget-object v1, p0, Lcom/kingroot/kinguser/adq;->adr:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/adq;->adr:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/kingroot/kinguser/adq;->mVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/adq;->mVersion:Ljava/lang/String;

    .line 199
    iget v1, p0, Lcom/kingroot/kinguser/adq;->ads:I

    iput v1, v0, Lcom/kingroot/kinguser/adq;->ads:I

    .line 200
    iget v1, p0, Lcom/kingroot/kinguser/adq;->mPosition:I

    iput v1, v0, Lcom/kingroot/kinguser/adq;->mPosition:I

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/adq;->adt:Lcom/kingroot/kinguser/adq$a;

    iput-object v1, v0, Lcom/kingroot/kinguser/adq;->adt:Lcom/kingroot/kinguser/adq$a;

    .line 202
    iget v1, p0, Lcom/kingroot/kinguser/adq;->mState:I

    iput v1, v0, Lcom/kingroot/kinguser/adq;->mState:I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 211
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    goto :goto_1
.end method
