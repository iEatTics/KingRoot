.class Lcom/kingroot/kinguser/atj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atj;
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
        "Lcom/kingroot/kinguser/asr;",
        ">;"
    }
.end annotation


# instance fields
.field private ahV:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/atj$a;->ahV:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/asr;Lcom/kingroot/kinguser/asr;)I
    .locals 3

    .prologue
    .line 281
    iget-boolean v0, p1, Lcom/kingroot/kinguser/asr;->aha:Z

    iget-boolean v1, p2, Lcom/kingroot/kinguser/asr;->aha:Z

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/atj$a;->ahV:Ljava/text/Collator;

    iget-object v1, p1, Lcom/kingroot/kinguser/asr;->mName:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/asr;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Lcom/kingroot/kinguser/asr;->aha:Z

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
    .line 275
    check-cast p1, Lcom/kingroot/kinguser/asr;

    check-cast p2, Lcom/kingroot/kinguser/asr;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/atj$a;->a(Lcom/kingroot/kinguser/asr;Lcom/kingroot/kinguser/asr;)I

    move-result v0

    return v0
.end method
