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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_7_if_true          #   9:     goto   7_if_true
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:
    movl    $16908, %eax            #  15:     sub    t6 <- 16908, 30254
    movl    $30254, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t7 <- t6, 90966
    movl    $90966, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     assign v2 <- t7
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 96 of <array 47 of <array 59 of <array 35 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    movl    $97, %eax               #   1:     return 97
    jmp     l_f1_exit              
    movl    $50035, %eax            #   2:     if     50035 >= 77502 goto 5
    movl    $77502, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5                 
    jmp     l_f1_6                  #   3:     goto   6
l_f1_5:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   6:     goto   7
l_f1_6:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t5
    movb    %al, 12(%ebp)          
l_f1_10_while_cond:
    movl    $98331, %eax            #  12:     if     98331 < 92077 goto 11_while_body
    movl    $92077, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_11_while_body     
    jmp     l_f1_9                  #  13:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  15:     goto   10_while_cond
l_f1_9:
    movl    $97, %eax               #  17:     return 97
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #  18:     goto   1_while_cond
    movl    $98, %eax               #  19:     if     98 <= 100 goto 15_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  20:     goto   16_if_false
l_f1_15_if_true:
    movl    $97, %eax               #  22:     assign v3 <- 97
    movb    %al, -15(%ebp)         
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_if_false:
l_f1_14:
    call    dummyCHARfunc           #  26:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     return t6
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v2       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $68769, %eax            #   1:     sub    t6 <- 68769, 30490
    movl    $30490, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $1432, %eax             #   2:     mul    t7 <- 1432, 30058
    movl    $30058, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t8 <- t7, 74624
    movl    $74624, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -20(%ebp), %eax         #   4:     sub    t9 <- t6, t8
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     assign v1 <- t9
    movl    %eax, -36(%ebp)        
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, -37(%ebp)         

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 30 of <array 96 of <array 47 of <array 59 of <array 35 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    movl    $98, %eax               #   0:     assign v0 <- 98
    movb    %al, v0                
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
    movl    $94226, %eax            #   2:     if     94226 >= 95307 goto 3_if_true
    movl    $95307, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
l_test_7_while_cond:
    movl    $37849, %eax            #   6:     if     37849 < 19592 goto 8_while_body
    movl    $19592, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #   7:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   9:     goto   7_while_cond
l_test_6:
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
l_test_14_while_cond:
    movl    $67649, %eax            #  13:     if     67649 < 74754 goto 15_while_body
    movl    $74754, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  14:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
    jmp     l_test_10               #  18:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_2                #  21:     goto   2
l_test_4_if_false:
l_test_2:
    call    ReadInt                 #  24:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #  25:     if     0 # 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  26:     goto   20_if_false
l_test_19_if_true:
    movl    $1, %eax                #  28:     if     1 = 0 goto 23_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  31:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $97702, %eax            #  34:     div    t1 <- 97702, 1199
    movl    $1199, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $68072, %eax            #  35:     if     68072 # t1 goto 27
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_27              
    jmp     l_test_28               #  36:     goto   28
l_test_27:
    movl    $1, %eax                #  38:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_29               #  39:     goto   29
l_test_28:
    movl    $0, %eax                #  41:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_29:
    movzbl  -21(%ebp), %eax         #  43:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  44:     &()    t3 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  45:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  46:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_18               #  47:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 30 of <array 96 of <array 47 of <array 59 of <array 35 of <int>>>>>>
    .long    5
    .long   30
    .long   96
    .long   47
    .long   59
    .long   35
    .skip 1118073600








    # end of global data section
    #-----------------------------------------

    .end
##################################################
