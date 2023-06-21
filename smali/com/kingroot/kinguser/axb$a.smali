.class Lcom/kingroot/kinguser/axb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/afk;",
        ">;"
    }
.end annotation


# instance fields
.field private ahV:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axb$a;->ahV:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/afk;)I
    .locals 3

    .prologue
    .line 294
    iget-boolean v0, p1, Lcom/kingroot/kinguser/afk;->aha:Z

    iget-boolean v1, p2, Lcom/kingroot/kinguser/afk;->aha:Z

    if-ne v0, v1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$a;->ahV:Ljava/text/Collator;

    iget-object v1, p1, Lcom/kingroot/kinguser/afk;->mName:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/afk;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/kingroot/kinguser/afk;->aha:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 288
    check-cast p1, Lcom/kingroot/kinguser/afk;

    check-cast p2, Lcom/kingroot/kinguser/afk;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/axb$a;->a(Lcom/kingroot/kinguser/afk;Lcom/kingroot/kinguser/afk;)I

    move-result v0

    return v0
.end method
