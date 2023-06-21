.class public Lcom/kingroot/kinguser/ces$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bZd:J

.field public bZe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bZf:Z

.field private bZg:I


# direct methods
.method public constructor <init>(JLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    .line 78
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    .line 79
    iput v1, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    .line 82
    iput-wide p1, p0, Lcom/kingroot/kinguser/ces$a;->bZd:J

    .line 83
    if-eqz p3, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    :cond_0
    iput-boolean p4, p0, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ces$a;)Lcom/kingroot/kinguser/ces$a;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces$a;->alk()Lcom/kingroot/kinguser/ces$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ces$a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ces$a;->cw(Ljava/util/List;)V

    return-void
.end method

.method private alk()Lcom/kingroot/kinguser/ces$a;
    .locals 5

    .prologue
    .line 121
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {v0}, Lcom/kingroot/kinguser/ces$a;->nQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/ces$a;

    iget-wide v2, p0, Lcom/kingroot/kinguser/ces$a;->bZd:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 130
    return-object v0
.end method

.method private all()Lcom/kingroot/kinguser/cfv$b;
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    iget-object v1, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/kingroot/kinguser/ces;->nP(Ljava/lang/String;)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v0

    return-object v0
.end method

.method private alm()V
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    .line 173
    iget v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    iget-object v1, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    .line 176
    :cond_0
    return-void
.end method

.method private aln()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ces$a;->bZg:I

    .line 180
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ces$a;)Lcom/kingroot/kinguser/cfv$b;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces$a;->all()Lcom/kingroot/kinguser/cfv$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ces$a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces$a;->alm()V

    return-void
.end method

.method private cw(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 108
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v2}, Lcom/kingroot/kinguser/ces;->n(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-static {p1, v2}, Lcom/kingroot/kinguser/ces;->n(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ces$a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces$a;->aln()V

    return-void
.end method

.method private static nQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    if-ltz v0, :cond_3

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/ces$a;->bZd:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v1, "|mValidTimeMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/ces$a;->bZd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|mIsDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|mIPPortList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
