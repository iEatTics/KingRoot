.class Lcom/kingroot/kinguser/aal$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method private static G([B)[B
    .locals 1

    .prologue
    .line 215
    invoke-static {p0}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic I([B)[B
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/kingroot/kinguser/aal$c;->G([B)[B

    move-result-object v0

    return-object v0
.end method
