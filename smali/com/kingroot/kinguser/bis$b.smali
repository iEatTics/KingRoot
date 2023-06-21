.class public Lcom/kingroot/kinguser/bis$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final GK:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "aa"

    aput-object v1, v0, v2

    const-string v1, "ab"

    aput-object v1, v0, v3

    const-string v1, "ac"

    aput-object v1, v0, v4

    const-string v1, "ad"

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingroot/kinguser/bis$b;->COLUMNS:[Ljava/lang/String;

    .line 146
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "long"

    aput-object v1, v0, v2

    const-string v1, "integer"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    sput-object v0, Lcom/kingroot/kinguser/bis$b;->GK:[Ljava/lang/String;

    return-void
.end method
