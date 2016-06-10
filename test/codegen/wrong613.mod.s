##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
    call    dummyINTfunc            #   4:     call   t13 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     sub    t14 <- t13, 98433
    movl    $98433, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     return t14
    jmp     l_f0_exit              
l_f0_7_while_cond:
    movl    $25980, %eax            #   8:     sub    t15 <- 25980, 48493
    movl    $48493, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $4229, %eax             #   9:     if     4229 >= t15 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_8_while_body      
    jmp     l_f0_6                  #  10:     goto   6
l_f0_8_while_body:
l_f0_11_while_cond:
    movl    $24935, %eax            #  13:     if     24935 >= 18269 goto 12_while_body
    movl    $18269, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_7_while_cond       #  18:     goto   7_while_cond
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t13      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t14      <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $25747, %eax            #   0:     assign v3 <- 25747
    movl    %eax, 16(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t13 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t14 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t14 = 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #   6:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <char> %ebp-17 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyINTfunc            #   0:     call   t13 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t14 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <ptr(4) to <array 5 of <char>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t5       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t7       <bool> %ebp-53 ]
    #    -54(%ebp)   1  [ $t8       <bool> %ebp-54 ]
    #    -60(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 3 of <bool>>>>>>> %ebp-60 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $12631, %eax            #   1:     if     12631 < 67362 goto 2_if_true
    movl    $67362, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyINTfunc            #   8:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t2 <- t1, 14295
    movl    $14295, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     add    t3 <- t2, 44493
    movl    $44493, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  11:     add    t4 <- t3, 47073
    movl    $47073, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     assign v0 <- t4
    movl    %eax, v0               
    movl    $38248, %eax            #  13:     if     38248 <= 11948 goto 8_if_true
    movl    $11948, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #  14:     goto   9_if_false
l_test_8_if_true:
    call    dummyBOOLfunc           #  16:     call   t5 <- dummyBOOLfunc
    movb    %al, -45(%ebp)         
    movl    $98, %eax               #  17:     assign v1 <- 98
    movb    %al, v1                
    movl    $46765, %eax            #  18:     param  0 <- 46765
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    $1, %eax                #  20:     if     1 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  21:     goto   16
l_test_15:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_test_17               #  24:     goto   17
l_test_16:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -53(%ebp)         
l_test_17:
    movzbl  -53(%ebp), %eax         #  28:     param  3 <- t7
    pushl   %eax                   
    movl    $98503, %eax            #  29:     param  2 <- 98503
    pushl   %eax                   
    movl    $41668, %eax            #  30:     if     41668 > 66689 goto 19
    movl    $66689, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_19              
    jmp     l_test_20               #  31:     goto   20
l_test_19:
    movl    $1, %eax                #  33:     assign t8 <- 1
    movb    %al, -54(%ebp)         
    jmp     l_test_21               #  34:     goto   21
l_test_20:
    movl    $0, %eax                #  36:     assign t8 <- 0
    movb    %al, -54(%ebp)         
l_test_21:
    movzbl  -54(%ebp), %eax         #  38:     param  1 <- t8
    pushl   %eax                   
    leal    v2, %eax                #  39:     &()    t9 <- v2
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  40:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  41:     call   f1
    addl    $16, %esp              
    call    dummyCHARfunc           #  42:     call   t10 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_7                #  43:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $47825, %eax            #  46:     param  0 <- 47825
    pushl   %eax                   
    call    f0                      #  47:     call   t11 <- f0
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        
    leal    _str_1, %eax            #  48:     &()    t12 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  49:     param  0 <- t12
    pushl   %eax                   
    call    WriteStr                #  50:     call   WriteStr
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 4 of <array 6 of <array 2 of <array 4 of <array 3 of <bool>>>>>>
    .long    5
    .long    4
    .long    6
    .long    2
    .long    4
    .long    3
    .skip  576








    # end of global data section
    #-----------------------------------------

    .end
##################################################
