.class public final Lcom/kingroot/kinguser/bpg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bpg$a;
    }
.end annotation


# static fields
.field private static bGy:[Lcom/kingroot/kinguser/bpg$a;

.field private static bGz:[Lcom/kingroot/kinguser/bpg$a;


# instance fields
.field public a:Ljava/lang/String;

.field public bGA:Lcom/kingroot/kinguser/bpg$a;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kingroot/kinguser/bpg$a;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGI:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGG:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bpg;->bGy:[Lcom/kingroot/kinguser/bpg$a;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/kingroot/kinguser/bpg$a;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGI:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGG:Lcom/kingroot/kinguser/bpg$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/bpg;->bGz:[Lcom/kingroot/kinguser/bpg$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bpg;->c:I

    iput-object p1, p0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/bpg$a;Z)Lcom/kingroot/kinguser/bpg$a;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg;->bGy:[Lcom/kingroot/kinguser/bpg$a;

    :goto_0
    aget-object v2, v0, v1

    if-eqz p0, :cond_2

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    if-ne p0, v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :goto_2
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bpg;->bGz:[Lcom/kingroot/kinguser/bpg$a;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/kingroot/kinguser/bpg$a;)Z
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGI:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/bpg$a;)Z
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/kingroot/kinguser/bpg;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v2, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kingroot/kinguser/bpg;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpg$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/bok;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
