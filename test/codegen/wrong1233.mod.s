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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    jmp     l_f0_5                  #   3:     goto   5
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_6:
    movl    $1, %eax                #   9:     if     1 = t7 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    jmp     l_f0_12_if_false        #  12:     goto   12_if_false
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $97340, %eax            #  16:     return 97340
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  17:     goto   1_while_cond
l_f0_0:
l_f0_15_while_cond:
    call    dummyCHARfunc           #  20:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #  21:     if     100 # t8 goto 16_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_16_while_body     
    jmp     l_f0_14                 #  22:     goto   14
l_f0_16_while_body:
    leal    _str_1, %eax            #  24:     &()    t9 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  26:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_15_while_cond      #  27:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_20                 #  29:     goto   20
    jmp     l_f0_20                 #  30:     goto   20
    jmp     l_f0_20                 #  31:     goto   20
    jmp     l_f0_21                 #  32:     goto   21
l_f0_20:
    movl    $1, %eax                #  34:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_22                 #  35:     goto   22
l_f0_21:
    movl    $0, %eax                #  37:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_22:
    movzbl  -13(%ebp), %eax         #  39:     assign v1 <- t10
    movb    %al, 8(%ebp)           

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
l_f1_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   7:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   8:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $7044, %eax             #   0:     if     7044 <= 86307 goto 1
    movl    $86307, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #   8:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   9:     call   t8 <- f0
    addl    $4, %esp               
    movl    %eax, -28(%ebp)        
l_f2_6_while_cond:
    call    dummyBOOLfunc           #  11:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  12:     if     t9 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
l_f2_9_while_cond:
    movl    $99, %eax               #  16:     if     99 # 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_10_while_body     
    jmp     l_f2_8                  #  17:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  19:     goto   9_while_cond
l_f2_8:
    movl    $0, %eax                #  21:     assign v3 <- 0
    movb    %al, 16(%ebp)          
    jmp     l_f2_6_while_cond       #  22:     goto   6_while_cond
l_f2_5:
    movl    $100, %eax              #  24:     if     100 = 99 goto 17
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_17                
    jmp     l_f2_18                 #  25:     goto   18
l_f2_17:
    movl    $1, %eax                #  27:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_19                 #  28:     goto   19
l_f2_18:
    movl    $0, %eax                #  30:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_19:
    movzbl  -13(%ebp), %eax         #  32:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  33:     call   t11 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $11722, %eax            #  34:     assign v2 <- 11722
    movl    %eax, 12(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    movl    $86230, %eax            #  37:     assign v4 <- 86230
    movl    %eax, 20(%ebp)         
    jmp     l_f2_13                 #  38:     goto   13
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t6       <char> %ebp-31 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    movl    $41, %eax               #   3:     sub    t1 <- 41, 26701
    movl    $26701, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t2 <- t1, 47117
    movl    $47117, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     if     t2 # 12028 goto 3_while_body
    movl    $12028, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $100, %eax              #  12:     if     100 < 97 goto 8_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #  13:     goto   6
l_test_8_while_body:
    movl    $97, %eax               #  15:     if     97 < 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  16:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_10               #  18:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $70465, %eax            #  21:     assign v1 <- 70465
    movl    %eax, v1               
    jmp     l_test_7_while_cond     #  22:     goto   7_while_cond
l_test_6:
l_test_16_while_cond:
    movl    $87859, %eax            #  25:     if     87859 > 63128 goto 17_while_body
    movl    $63128, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_17_while_body   
    jmp     l_test_15               #  26:     goto   15
l_test_17_while_body:
    movl    $100, %eax              #  28:     param  3 <- 100
    pushl   %eax                   
    movl    $0, %eax                #  29:     param  2 <- 0
    pushl   %eax                   
    call    ReadInt                 #  30:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $77536, %eax            #  31:     if     77536 <= t3 goto 20
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_20              
    jmp     l_test_21               #  32:     goto   21
l_test_20:
    movl    $1, %eax                #  34:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_22               #  35:     goto   22
l_test_21:
    movl    $0, %eax                #  37:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_22:
    movzbl  -29(%ebp), %eax         #  39:     param  1 <- t4
    pushl   %eax                   
    movl    $97, %eax               #  40:     if     97 >= 97 goto 24
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_24              
    jmp     l_test_25               #  41:     goto   25
l_test_24:
    movl    $1, %eax                #  43:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_26               #  44:     goto   26
l_test_25:
    movl    $0, %eax                #  46:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_26:
    movzbl  -30(%ebp), %eax         #  48:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  49:     call   t6 <- f1
    addl    $16, %esp              
    movb    %al, -31(%ebp)         
    jmp     l_test_16_while_cond    #  50:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
