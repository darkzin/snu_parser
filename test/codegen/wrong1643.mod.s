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
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t8       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 59 of <array 14 of <array 43 of <array 3 of <array 83 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 24 of <array 7 of <array 66 of <array 5 of <array 63 of <bool>>>>>>> %ebp+20 ]
    #    -18(%ebp)   1  [ $v4       <bool> %ebp-18 ]

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
    call    dummyBOOLfunc           #   0:     call   t7 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   1:     if     t7 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    jmp     l_f0_9_if_false         #   5:     goto   9_if_false
    movl    $97, %eax               #   6:     if     97 > 100 goto 11
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_12                 #   7:     goto   12
l_f0_11:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_13                 #  10:     goto   13
l_f0_12:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -16(%ebp)         
l_f0_13:
    movzbl  -16(%ebp), %eax         #  14:     assign v4 <- t8
    movb    %al, -18(%ebp)         
    movl    $98, %eax               #  15:     if     98 >= 97 goto 16
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16                
    jmp     l_f0_17                 #  16:     goto   17
l_f0_16:
    movl    $1, %eax                #  18:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_18                 #  19:     goto   18
l_f0_17:
    movl    $0, %eax                #  21:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f0_18:
    movzbl  -17(%ebp), %eax         #  23:     return t9
    jmp     l_f0_exit              
    movl    $1, %eax                #  24:     return 1
    jmp     l_f0_exit              
    call    dummyProcedure          #  25:     call   dummyProcedure
    movl    $9118, %eax             #  26:     if     9118 > 73842 goto 23
    movl    $73842, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_23                
    jmp     l_f0_24                 #  27:     goto   24
l_f0_23:
    movl    $1, %eax                #  29:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_25                 #  30:     goto   25
l_f0_24:
    movl    $0, %eax                #  32:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f0_25:
    movzbl  -13(%ebp), %eax         #  34:     return t10
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  35:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_28                 #  38:     goto   28
    jmp     l_f0_29                 #  39:     goto   29
l_f0_28:
    movl    $1, %eax                #  41:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_30                 #  42:     goto   30
l_f0_29:
    movl    $0, %eax                #  44:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f0_30:
    movzbl  -14(%ebp), %eax         #  46:     return t11
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 24 of <array 7 of <array 66 of <array 5 of <array 63 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 59 of <array 14 of <array 43 of <array 3 of <array 83 of <int>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 41 of <array 3 of <array 83 of <array 83 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 98 of <array 20 of <array 8 of <array 71 of <int>>>>>>> %ebp+12 ]
    #   -35375988(%ebp)  35375952  [ $v2       <array 59 of <array 14 of <array 43 of <array 3 of <array 83 of <int>>>>>> %ebp-35375988 ]
    #   -38868732(%ebp)  3492744  [ $v3       <array 24 of <array 7 of <array 66 of <array 5 of <array 63 of <bool>>>>>> %ebp-38868732 ]
    #   -38868736(%ebp)   4  [ $v4       <int> %ebp-38868736 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $38868724, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9717181, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35375988(%ebp)      # local array 'v2': 5 dimensions
    movl    $59,-35375984(%ebp)     #   dimension 1: 59 elements
    movl    $14,-35375980(%ebp)     #   dimension 2: 14 elements
    movl    $43,-35375976(%ebp)     #   dimension 3: 43 elements
    movl    $3,-35375972(%ebp)      #   dimension 4: 3 elements
    movl    $83,-35375968(%ebp)     #   dimension 5: 83 elements
    movl    $5,-38868732(%ebp)      # local array 'v3': 5 dimensions
    movl    $24,-38868728(%ebp)     #   dimension 1: 24 elements
    movl    $7,-38868724(%ebp)      #   dimension 2: 7 elements
    movl    $66,-38868720(%ebp)     #   dimension 3: 66 elements
    movl    $5,-38868716(%ebp)      #   dimension 4: 5 elements
    movl    $63,-38868712(%ebp)     #   dimension 5: 63 elements

    # function body
    leal    -38868732(%ebp), %eax   #   0:     &()    t7 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     param  3 <- t7
    pushl   %eax                   
    movl    $97, %eax               #   2:     param  2 <- 97
    pushl   %eax                   
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #   4:     param  1 <- t8
    pushl   %eax                   
    leal    -35375988(%ebp), %eax   #   5:     &()    t9 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     param  0 <- t9
    pushl   %eax                   
    call    f0                      #   7:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   8:     return t10
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   9:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $60230, %eax            #  10:     mul    t12 <- 60230, 85870
    movl    $85870, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     mul    t13 <- t12, 21625
    movl    $21625, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     assign v4 <- t13
    movl    %eax, -38868736(%ebp)  

l_f1_exit:
    # epilogue
    addl    $38868724, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 41 of <array 3 of <array 83 of <array 83 of <array 72 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t7       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 98 of <array 98 of <array 20 of <array 8 of <array 71 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -61009036(%ebp)  61009008  [ $v2       <array 41 of <array 3 of <array 83 of <array 83 of <array 72 of <char>>>>>> %ebp-61009036 ]
    #   -497414820(%ebp)  436405784  [ $v3       <array 98 of <array 98 of <array 20 of <array 8 of <array 71 of <int>>>>>> %ebp-497414820 ]
    #   -497414824(%ebp)   4  [ $v4       <int> %ebp-497414824 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $497414812, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $124353703, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-61009036(%ebp)      # local array 'v2': 5 dimensions
    movl    $41,-61009032(%ebp)     #   dimension 1: 41 elements
    movl    $3,-61009028(%ebp)      #   dimension 2: 3 elements
    movl    $83,-61009024(%ebp)     #   dimension 3: 83 elements
    movl    $83,-61009020(%ebp)     #   dimension 4: 83 elements
    movl    $72,-61009016(%ebp)     #   dimension 5: 72 elements
    movl    $5,-497414820(%ebp)     # local array 'v3': 5 dimensions
    movl    $98,-497414816(%ebp)    #   dimension 1: 98 elements
    movl    $98,-497414812(%ebp)    #   dimension 2: 98 elements
    movl    $20,-497414808(%ebp)    #   dimension 3: 20 elements
    movl    $8,-497414804(%ebp)     #   dimension 4: 8 elements
    movl    $71,-497414800(%ebp)    #   dimension 5: 71 elements

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t7 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   2:     param  0 <- t7
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    movl    $97, %eax               #   4:     if     97 # 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   5:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   7:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyINTfunc            #  10:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    movl    $1, %eax                #  15:     if     1 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  16:     goto   12_if_false
l_f2_11_if_true:
    leal    -497414820(%ebp), %eax  #  18:     &()    t9 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  1 <- t9
    pushl   %eax                   
    leal    -61009036(%ebp), %eax   #  20:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  22:     call   t11 <- f1
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movl    $3788, %eax             #  23:     assign v4 <- 3788
    movl    %eax, -497414824(%ebp) 
    jmp     l_f2_18_if_false        #  24:     goto   18_if_false
    jmp     l_f2_16                 #  25:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_21_if_false        #  28:     goto   21_if_false
    jmp     l_f2_19                 #  29:     goto   19
l_f2_21_if_false:
l_f2_19:
    jmp     l_f2_10                 #  32:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $497414812, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 24 of <array 7 of <array 66 of <array 5 of <array 63 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 59 of <array 14 of <array 43 of <array 3 of <array 83 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
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
    leal    v1, %eax                #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  3 <- t0
    pushl   %eax                   
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  2 <- t1
    pushl   %eax                   
    movl    $100, %eax              #   4:     param  1 <- 100
    pushl   %eax                   
    leal    v0, %eax                #   5:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   7:     call   t3 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $95477, %eax            #   8:     add    t4 <- 95477, 21086
    movl    $21086, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     if     t4 # 28622 goto 2_if_true
    movl    $28622, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_if_true       
    jmp     l_test_3_if_false       #  10:     goto   3_if_false
l_test_2_if_true:
    movl    $38787, %eax            #  12:     param  0 <- 38787
    pushl   %eax                   
    call    WriteInt                #  13:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  18:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         

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
v0:                                 # <array 59 of <array 14 of <array 43 of <array 3 of <array 83 of <int>>>>>>
    .long    5
    .long   59
    .long   14
    .long   43
    .long    3
    .long   83
    .skip 35375928
v1:                                 # <array 24 of <array 7 of <array 66 of <array 5 of <array 63 of <bool>>>>>>
    .long    5
    .long   24
    .long    7
    .long   66
    .long    5
    .long   63
    .skip 3492720








    # end of global data section
    #-----------------------------------------

    .end
##################################################
