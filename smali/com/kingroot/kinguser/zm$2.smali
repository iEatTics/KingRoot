.class final Lcom/kingroot/kinguser/zm$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/zm;->a([Lcom/kingroot/kinguser/zm$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic WE:[Lcom/kingroot/kinguser/zm$d;


# direct methods
.method constructor <init>([Lcom/kingroot/kinguser/zm$d;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/zm$2;->WE:[Lcom/kingroot/kinguser/zm$d;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/kingroot/kinguser/zm$2;->WE:[Lcom/kingroot/kinguser/zm$d;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 59
    invoke-static {v3}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method
