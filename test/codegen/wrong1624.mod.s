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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 58 of <array 74 of <array 93 of <array 88 of <array 87 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 59 of <array 46 of <array 67 of <array 52 of <array 11 of <char>>>>>>> %ebp+20 ]

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
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_6_while_body       #   4:     goto   6_while_body
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  10:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_11_while_cond:
    movl    $97, %eax               #  12:     if     97 # 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 59 of <array 46 of <array 67 of <array 52 of <array 11 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 58 of <array 74 of <array 93 of <array 88 of <array 87 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 60 of <array 68 of <array 92 of <array 98 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   661148492(%ebp)  -661148520  [ $v3       <array 58 of <array 74 of <array 93 of <array 88 of <array 87 of <int>>>>>> %ebp+661148492 ]
    #   557137132(%ebp)  104011360  [ $v4       <array 59 of <array 46 of <array 67 of <array 52 of <array 11 of <char>>>>>> %ebp+557137132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-557137144, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-139284286, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,661148492(%ebp)      # local array 'v3': 5 dimensions
    movl    $58,661148496(%ebp)     #   dimension 1: 58 elements
    movl    $74,661148500(%ebp)     #   dimension 2: 74 elements
    movl    $93,661148504(%ebp)     #   dimension 3: 93 elements
    movl    $88,661148508(%ebp)     #   dimension 4: 88 elements
    movl    $87,661148512(%ebp)     #   dimension 5: 87 elements
    movl    $5,557137132(%ebp)      # local array 'v4': 5 dimensions
    movl    $59,557137136(%ebp)     #   dimension 1: 59 elements
    movl    $46,557137140(%ebp)     #   dimension 2: 46 elements
    movl    $67,557137144(%ebp)     #   dimension 3: 67 elements
    movl    $52,557137148(%ebp)     #   dimension 4: 52 elements
    movl    $11,557137152(%ebp)     #   dimension 5: 11 elements

    # function body
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $100, %eax              #   2:     if     100 > 97 goto 5
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_7:
    movzbl  -14(%ebp), %eax         #  10:     return t5
    jmp     l_f1_exit              
    movl    $98, %eax               #  11:     if     98 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  12:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_if_false:
l_f1_9:
l_f1_14_while_cond:
    movl    $100, %eax              #  18:     if     100 = 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:
l_f1_18_while_cond:
    jmp     l_f1_17                 #  24:     goto   17
    jmp     l_f1_18_while_cond      #  25:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_1_while_cond       #  27:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  29:     call   t6 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_f1_22_while_cond:
    leal    557137132(%ebp), %eax   #  31:     &()    t7 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     param  3 <- t7
    pushl   %eax                   
    leal    661148492(%ebp), %eax   #  33:     &()    t8 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     param  2 <- t8
    pushl   %eax                   
    movl    $81494, %eax            #  35:     if     81494 >= 3005 goto 25
    movl    $3005, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_25                
    jmp     l_f1_26                 #  36:     goto   26
l_f1_25:
    movl    $1, %eax                #  38:     assign t9 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_27                 #  39:     goto   27
l_f1_26:
    movl    $0, %eax                #  41:     assign t9 <- 0
    movb    %al, -25(%ebp)         
l_f1_27:
    movzbl  -25(%ebp), %eax         #  43:     param  1 <- t9
    pushl   %eax                   
    movl    $100, %eax              #  44:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  45:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  46:     if     t10 = 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_23_while_body     
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  48:     goto   22_while_cond

l_f1_exit:
    # epilogue
    addl    $-557137144, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 56 of <array 15 of <array 11 of <array 55 of <array 44 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 81 of <array 40 of <array 41 of <array 68 of <array 98 of <char>>>>>>> %ebp+16 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t5
    jmp     l_f2_exit              
    movl    $100, %eax              #   3:     return 100
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 99 of <array 60 of <array 68 of <array 92 of <array 98 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    movl    $0, %eax                #   2:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $46719, %eax            #   8:     sub    t1 <- 46719, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     assign v1 <- t1
    movl    %eax, v1               
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     assign v2 <- t2
    movb    %al, v2                
    movl    $99, %eax               #  12:     param  1 <- 99
    pushl   %eax                   
    leal    v3, %eax                #  13:     &()    t3 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  15:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1
    .align   4
v3:                                 # <array 99 of <array 60 of <array 68 of <array 92 of <array 98 of <char>>>>>>
    .long    5
    .long   99
    .long   60
    .long   68
    .long   92
    .long   98
    .skip -653224576








    # end of global data section
    #-----------------------------------------

    .end
##################################################
