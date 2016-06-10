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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 8 of <array 2 of <array 6 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   1:     assign v2 <- 98
    movb    %al, 12(%ebp)          
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   5:     goto   8
    jmp     l_f0_8                  #   6:     goto   8
    jmp     l_f0_8                  #   7:     goto   8
    jmp     l_f0_8                  #   8:     goto   8
    jmp     l_f0_8                  #   9:     goto   8
    jmp     l_f0_9_while_cond       #  10:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_5                  #  12:     goto   5
l_f0_5:
l_f0_18_while_cond:
    movl    $99, %eax               #  15:     if     99 < 97 goto 19_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_19_while_body     
    jmp     l_f0_17                 #  16:     goto   17
l_f0_19_while_body:
    movl    $1, %eax                #  18:     assign v4 <- 1
    movb    %al, 20(%ebp)          
l_f0_23_while_cond:
    jmp     l_f0_22                 #  20:     goto   22
    jmp     l_f0_23_while_cond      #  21:     goto   23_while_cond
l_f0_22:
    call    dummyBOOLfunc           #  23:     call   t8 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $98, %eax               #  24:     if     98 >= 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  25:     goto   28_if_false
l_f0_27_if_true:
    jmp     l_f0_26                 #  27:     goto   26
l_f0_28_if_false:
l_f0_26:
    movl    $14295, %eax            #  30:     param  0 <- 14295
    pushl   %eax                   
    call    WriteInt                #  31:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #  32:     assign v2 <- 98
    movb    %al, 12(%ebp)          
l_f0_33_while_cond:
    movl    $97, %eax               #  34:     if     97 < 99 goto 34_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_34_while_body     
    jmp     l_f0_32                 #  35:     goto   32
l_f0_34_while_body:
    jmp     l_f0_33_while_cond      #  37:     goto   33_while_cond
l_f0_32:
    jmp     l_f0_18_while_cond      #  39:     goto   18_while_cond
l_f0_17:

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    jmp     l_f1_2                  #   1:     goto   2
    jmp     l_f1_2                  #   2:     goto   2
    jmp     l_f1_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     return t7
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  10:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $28680, %eax            #  11:     assign v1 <- 28680
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
l_f2_1_while_cond:
    call    ReadInt                 #   1:     call   t7 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t7 >= 70027 goto 2_while_body
    movl    $70027, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $0, %eax                #   5:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
l_f2_6_while_cond:
    movl    $51615, %eax            #   9:     if     51615 = 70521 goto 7_while_body
    movl    $70521, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  10:     goto   5
l_f2_7_while_body:
    jmp     l_f2_9                  #  12:     goto   9
l_f2_9:
    movl    $0, %eax                #  14:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    movl    $99, %eax               #  15:     assign v2 <- 99
    movb    %al, -25(%ebp)         
    movl    $0, %eax                #  16:     return 0
    jmp     l_f2_exit              
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    movl    $87287, %eax            #  19:     sub    t8 <- 87287, 16422
    movl    $16422, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     add    t9 <- t8, 22922
    movl    $22922, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 9 of <array 8 of <array 2 of <array 6 of <array 6 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]

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
    movl    $98, %eax               #   0:     if     98 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $50305, %eax            #   3:     assign v0 <- 50305
    movl    %eax, v0               
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $86032, %eax            #   9:     sub    t0 <- 86032, 99076
    movl    $99076, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t0 = 33543 goto 8_while_body
    movl    $33543, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    movl    $0, %eax                #  13:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_7_while_cond     #  14:     goto   7_while_cond
l_test_6:
    movl    $94915, %eax            #  16:     mul    t1 <- 94915, 36219
    movl    $36219, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t2 <- t1, 53061
    movl    $53061, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     if     t2 < 32873 goto 12
    movl    $32873, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  19:     goto   13
l_test_12:
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_14               #  22:     goto   14
l_test_13:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_14:
    movzbl  -25(%ebp), %eax         #  26:     assign v1 <- t3
    movb    %al, v1                
    jmp     l_test_18_if_false      #  27:     goto   18_if_false
    jmp     l_test_exit            
    movl    $0, %eax                #  29:     param  3 <- 0
    pushl   %eax                   
    leal    v2, %eax                #  30:     &()    t4 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     param  2 <- t4
    pushl   %eax                   
    movl    $98, %eax               #  32:     param  1 <- 98
    pushl   %eax                   
    movl    $100, %eax              #  33:     if     100 <= 97 goto 21
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_21              
    jmp     l_test_22               #  34:     goto   22
l_test_21:
    movl    $1, %eax                #  36:     assign t5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_test_23               #  37:     goto   23
l_test_22:
    movl    $0, %eax                #  39:     assign t5 <- 0
    movb    %al, -33(%ebp)         
l_test_23:
    movzbl  -33(%ebp), %eax         #  41:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  42:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -34(%ebp)         
    jmp     l_test_16               #  43:     goto   16
l_test_18_if_false:
l_test_16:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 9 of <array 8 of <array 2 of <array 6 of <array 6 of <bool>>>>>>
    .long    5
    .long    9
    .long    8
    .long    2
    .long    6
    .long    6
    .skip 5184








    # end of global data section
    #-----------------------------------------

    .end
##################################################
