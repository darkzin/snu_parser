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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $v2       <char> %ebp-17 ]

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
    movl    $97261, %eax            #   1:     if     97261 > 75741 goto 2_while_body
    movl    $75741, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_5                  #   4:     goto   5
    jmp     l_f0_5                  #   5:     goto   5
    jmp     l_f0_6                  #   6:     goto   6
l_f0_5:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   9:     goto   7
l_f0_6:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #  13:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  16:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     if     t4 >= 97 goto 11
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_11                
    jmp     l_f0_12                 #  18:     goto   12
l_f0_11:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_13                 #  21:     goto   13
l_f0_12:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_13:
    movzbl  -15(%ebp), %eax         #  25:     assign v1 <- t5
    movb    %al, -16(%ebp)         
    movl    $99, %eax               #  26:     assign v2 <- 99
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_5_while_cond:
    movl    $0, %eax                #   2:     if     0 = 1 goto 6_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_9_while_cond:
    call    dummyBOOLfunc           #  11:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     if     t3 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10_while_body     
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  14:     goto   9_while_cond
    jmp     l_f1_15_if_false        #  15:     goto   15_if_false
l_f1_17_while_cond:
    movl    $96813, %eax            #  17:     sub    t4 <- 96813, 68932
    movl    $68932, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     sub    t5 <- t4, 47866
    movl    $47866, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     sub    t6 <- t5, 7557
    movl    $7557, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t7 <- t6, 54869
    movl    $54869, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     if     t7 > 42741 goto 18_while_body
    movl    $42741, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_18_while_body     
    jmp     l_f1_16                 #  22:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  24:     goto   17_while_cond
l_f1_16:
    jmp     l_f1_13                 #  26:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 74 of <array 100 of <array 87 of <array 82 of <array 81 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 34 of <array 59 of <array 20 of <array 4 of <bool>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v2 <- t3
    movb    %al, -29(%ebp)         
l_f2_6_while_cond:
    movl    $100, %eax              #   8:     if     100 > 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  12:     goto   9
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
l_f2_13_while_cond:
    jmp     l_f2_12                 #  16:     goto   12
    jmp     l_f2_13_while_cond      #  17:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_6_while_cond       #  19:     goto   6_while_cond
l_f2_5:
    movl    $55227, %eax            #  21:     mul    t4 <- 55227, 42790
    movl    $42790, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t5 <- t4, 28380
    movl    $28380, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     mul    t6 <- t5, 7549
    movl    $7549, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     return t6
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
l_test_5_while_cond:
    jmp     l_test_4                #   4:     goto   4
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $9790, %eax             #   9:     if     9790 < 37720 goto 8_if_true
    movl    $37720, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_exit            
l_test_13_while_cond:
    movl    $34696, %eax            #  14:     if     34696 < 20912 goto 14_while_body
    movl    $20912, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  15:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  17:     goto   13_while_cond
l_test_12:
    jmp     l_test_16               #  19:     goto   16
l_test_16:
l_test_20_while_cond:
    jmp     l_test_19               #  22:     goto   19
    jmp     l_test_20_while_cond    #  23:     goto   20_while_cond
l_test_19:
    jmp     l_test_7                #  25:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $98, %eax               #  28:     if     98 < 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_23              
    jmp     l_test_24               #  29:     goto   24
l_test_23:
    movl    $1, %eax                #  31:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_25               #  32:     goto   25
l_test_24:
    movl    $0, %eax                #  34:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_25:
    movzbl  -13(%ebp), %eax         #  36:     assign v0 <- t0
    movb    %al, v0                
    call    dummyCHARfunc           #  37:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  38:     if     99 # t1 goto 28_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_28_if_true      
    jmp     l_test_29_if_false      #  39:     goto   29_if_false
l_test_28_if_true:
    movl    $1, %eax                #  41:     assign v0 <- 1
    movb    %al, v0                
l_test_33_while_cond:
    jmp     l_test_33_while_cond    #  43:     goto   33_while_cond
    call    dummyCHARfunc           #  44:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_27               #  45:     goto   27
l_test_29_if_false:
l_test_27:
    call    f1                      #  48:     call   f1

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
