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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -24(%ebp)   4  [ $v4       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              
    movl    $99, %eax               #   2:     if     99 <= 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   3:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_10_while_cond:
    jmp     l_f0_9                  #   9:     goto   9
    jmp     l_f0_10_while_cond      #  10:     goto   10_while_cond
l_f0_9:
    movl    $35682, %eax            #  12:     assign v4 <- 35682
    movl    %eax, -24(%ebp)        
    call    dummyINTfunc            #  13:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_15_while_cond:
    jmp     l_f0_14                 #  15:     goto   14
    jmp     l_f0_15_while_cond      #  16:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_0                  #  18:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  20:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v1       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $v2       <bool> %ebp-34 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $91000, %eax            #   1:     div    t8 <- 91000, 51986
    movl    $51986, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t8 > 30088 goto 2_while_body
    movl    $30088, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $35211, %eax            #   7:     if     35211 < 80171 goto 5_if_true
    movl    $80171, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
    call    WriteLn                 #  10:     call   WriteLn
    movl    $99, %eax               #  11:     return 99
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  12:     call   t9 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f1_4                  #  13:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $88428, %eax            #  16:     if     88428 # 13899 goto 12_if_true
    movl    $13899, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  17:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_15                 #  19:     goto   15
l_f1_15:
    movl    $24736, %eax            #  21:     assign v0 <- 24736
    movl    %eax, -32(%ebp)        
    call    ReadInt                 #  22:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $53214, %eax            #  23:     assign v0 <- 53214
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  24:     assign v1 <- 98
    movb    %al, -33(%ebp)         
    movl    $97, %eax               #  25:     return 97
    jmp     l_f1_exit              
    call    ReadInt                 #  26:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  27:     assign v2 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_11                 #  28:     goto   11
l_f1_13_if_false:
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <char> %ebp-22 ]

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
    call    dummyINTfunc            #   0:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_6                  #   2:     goto   6
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #   4:     goto   7
l_f2_6:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movl    $0, %eax                #   8:     if     0 # t9 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   9:     goto   1
l_f2_3_while_body:
    movl    $99, %eax               #  11:     assign v1 <- 99
    movb    %al, -22(%ebp)         
    jmp     l_f2_2_while_cond       #  12:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_14                 #  14:     goto   14
    jmp     l_f2_15                 #  15:     goto   15
l_f2_14:
    movl    $1, %eax                #  17:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $0, %eax                #  20:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_16:
    movzbl  -13(%ebp), %eax         #  22:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t5       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t6       <bool> %ebp-27 ]
    #    -28(%ebp)   1  [ $t7       <bool> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t1 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   6:     goto   2_while_cond
l_test_1:
    call    ReadInt                 #   8:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_7_while_cond:
    movl    $0, %eax                #  10:     if     0 # 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    call    WriteLn                 #  13:     call   WriteLn
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
    call    dummyINTfunc            #  16:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_15               #  17:     goto   15
l_test_15:
    jmp     l_test_7_while_cond     #  19:     goto   7_while_cond
l_test_6:
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     assign v0 <- t4
    movb    %al, v0                
    call    dummyBOOLfunc           #  23:     call   t5 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  24:     if     t5 = 1 goto 20
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20              
    jmp     l_test_20               #  25:     goto   20
    jmp     l_test_21               #  26:     goto   21
l_test_20:
    movl    $1, %eax                #  28:     assign t6 <- 1
    movb    %al, -27(%ebp)         
    jmp     l_test_22               #  29:     goto   22
l_test_21:
    movl    $0, %eax                #  31:     assign t6 <- 0
    movb    %al, -27(%ebp)         
l_test_22:
    movzbl  -27(%ebp), %eax         #  33:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  34:     call   t7 <- f2
    addl    $4, %esp               
    movb    %al, -28(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
