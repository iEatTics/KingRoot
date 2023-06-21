.class public Lcom/kingroot/kinguser/cez;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cez$b;,
        Lcom/kingroot/kinguser/cez$a;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bYN:Lcom/kingroot/kinguser/cff;

.field private bZq:Lcom/kingroot/kinguser/cez$b;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "RsaKeyCertifier"

    iput-object v0, p0, Lcom/kingroot/kinguser/cez;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cez;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/kingroot/kinguser/cez;->bYN:Lcom/kingroot/kinguser/cff;

    .line 74
    new-instance v0, Lcom/kingroot/kinguser/cez$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cez$b;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/cez;->alx()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cez;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cez;->bh(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private alx()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/cez;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fJ()Lcom/kingroot/kinguser/cez$b;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/cez;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iget-object v3, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cez;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iput-object p1, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iput-object p2, v0, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/cez;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ceu;->b(Lcom/kingroot/kinguser/cez$b;)V

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private le(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 274
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 275
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 278
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 279
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nR(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_0
    return-object v0

    .line 255
    :cond_0
    :try_start_0
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb49jFnNqMDLdl87UtY5jOMqqdMuvQg65Zuva3Qm1tORQGBuM04u7fqygA64XbOx9e/KPNkDNDmqS8SlsAPL1fV2lqM/phgV0NY62TJqSR+PLngwJd2rhYR8wQ1N0JE+R59a5c08EGsd6axStjHsVu2+evCf/SWU9Y/oQpEtOjGwIDAQAB"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cgn;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 256
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 257
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cez$a;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x98

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v5

    .line 125
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cez;->le(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/cez;->nR(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 133
    const v0, -0x13130e8

    invoke-interface {p1, v5, v4, v0}, Lcom/kingroot/kinguser/cez$a;->l(III)V

    .line 241
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/as;

    invoke-direct {v1}, Lcom/kingroot/kinguser/as;-><init>()V

    .line 138
    iput-object v0, v1, Lcom/kingroot/kinguser/as;->iC:[B

    .line 141
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v3, Lcom/kingroot/kinguser/az;

    invoke-direct {v3}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 143
    iput v5, v3, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 144
    iput v4, v3, Lcom/kingroot/kinguser/az;->cmd:I

    .line 148
    iget v0, v3, Lcom/kingroot/kinguser/az;->flag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v3, Lcom/kingroot/kinguser/az;->flag:I

    .line 149
    iget v0, v3, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-static {v7, v1, v0, v3}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/az;->data:[B

    .line 151
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, v3, Lcom/kingroot/kinguser/az;->seqNo:I

    const-wide/16 v8, -0x1

    invoke-virtual {v0, v1, v8, v9, v7}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 156
    iget-object v7, p0, Lcom/kingroot/kinguser/cez;->bYN:Lcom/kingroot/kinguser/cff;

    new-instance v0, Lcom/kingroot/kinguser/cez$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cez$1;-><init>(Lcom/kingroot/kinguser/cez;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/cez$a;I)V

    invoke-virtual {v7, v6, v0}, Lcom/kingroot/kinguser/cff;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    goto :goto_0
.end method

.method public fw()Lcom/kingroot/kinguser/cez$b;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/kingroot/kinguser/cez$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cez$b;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/kingroot/kinguser/cez;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/kingroot/kinguser/cez;->bZq:Lcom/kingroot/kinguser/cez$b;

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
