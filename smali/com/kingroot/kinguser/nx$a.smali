.class public Lcom/kingroot/kinguser/nx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/nx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private rP:Ljava/lang/String;

.field private vp:Ljava/lang/String;

.field private xC:Z

.field private xD:I

.field private xE:I

.field private xF:Ljava/lang/String;

.field private xG:Ljava/lang/String;

.field private xH:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/nx$a;->xC:Z

    .line 136
    const/16 v0, 0x2c

    iput v0, p0, Lcom/kingroot/kinguser/nx$a;->xD:I

    .line 138
    const-string v0, "0.0.0"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xF:Ljava/lang/String;

    .line 139
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xG:Ljava/lang/String;

    .line 140
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xH:Ljava/lang/String;

    .line 141
    const-string v0, "/data"

    iput-object v0, p0, Lcom/kingroot/kinguser/nx$a;->vp:Ljava/lang/String;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ny;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingroot/kinguser/nx$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/nx$a;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/kingroot/kinguser/nx$a;->xC:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/nx$a;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/kingroot/kinguser/nx$a;->xD:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/nx$a;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/kingroot/kinguser/nx$a;->xE:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/nx$a;->xH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/nx$a;->rP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/nx$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/nx$a;->vp:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public av(I)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/kingroot/kinguser/nx$a;->xD:I

    .line 154
    return-object p0
.end method

.method public aw(I)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/kingroot/kinguser/nx$a;->xE:I

    .line 159
    return-object p0
.end method

.method public bR(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kingroot/kinguser/nx$a;->xF:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public bS(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/nx$a;->xG:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public bT(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kingroot/kinguser/nx$a;->xH:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public bU(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kingroot/kinguser/nx$a;->rP:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public bV(Ljava/lang/String;)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kingroot/kinguser/nx$a;->vp:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public fq()Lcom/kingroot/kinguser/nx;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/kingroot/kinguser/nx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/nx;-><init>(Lcom/kingroot/kinguser/nx$a;Lcom/kingroot/kinguser/ny;)V

    return-object v0
.end method

.method public o(Z)Lcom/kingroot/kinguser/nx$a;
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/kingroot/kinguser/nx$a;->xC:Z

    .line 149
    return-object p0
.end method
