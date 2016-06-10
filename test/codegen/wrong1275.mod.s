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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]

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
    movl    $61514, %eax            #   0:     mul    t3 <- 61514, 39699
    movl    $39699, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t3
    movl    %eax, 8(%ebp)          
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
    movl    $99, %eax               #   4:     if     99 >= 97 goto 6
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_7:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -21(%ebp)         
l_f0_8:
    movzbl  -21(%ebp), %eax         #  12:     assign v2 <- t5
    movb    %al, -22(%ebp)         
    movl    $1, %eax                #  13:     assign v2 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f0_2                  #  14:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 100 of <array 12 of <array 98 of <array 9 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 59 of <array 32 of <array 91 of <array 9 of <array 85 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 55 of <array 18 of <array 22 of <array 5 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 70 of <array 92 of <array 97 of <array 28 of <array 35 of <bool>>>>>>> %ebp+20 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     return t3
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   7:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #   8:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     sub    t6 <- t5, 49586
    movl    $49586, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     if     t6 = 90335 goto 7
    movl    $90335, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_7                 
    jmp     l_f1_8                  #  11:     goto   8
l_f1_7:
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_9                  #  14:     goto   9
l_f1_8:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f1_9:
    movzbl  -25(%ebp), %eax         #  18:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 55 of <array 100 of <array 12 of <array 98 of <array 9 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 70 of <array 92 of <array 97 of <array 28 of <array 35 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 33 of <array 55 of <array 18 of <array 22 of <array 5 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 59 of <array 32 of <array 91 of <array 9 of <array 85 of <char>>>>>>> %ebp-48 ]
    #    -52(%ebp)   4  [ $v1       <int> %ebp-52 ]
    #   -232848076(%ebp)  232848024  [ $v2       <array 55 of <array 100 of <array 12 of <array 98 of <array 9 of <int>>>>>> %ebp-232848076 ]
    #   -364281220(%ebp)  131433144  [ $v3       <array 59 of <array 32 of <array 91 of <array 9 of <array 85 of <char>>>>>> %ebp-364281220 ]
    #   -378656044(%ebp)  14374824  [ $v4       <array 33 of <array 55 of <array 18 of <array 22 of <array 5 of <int>>>>>> %ebp-378656044 ]
    #   -990842468(%ebp)  612186424  [ $v5       <array 70 of <array 92 of <array 97 of <array 28 of <array 35 of <bool>>>>>> %ebp-990842468 ]
    #   -990842469(%ebp)   1  [ $v6       <char> %ebp-990842469 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $990842460, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $247710615, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-232848076(%ebp)     # local array 'v2': 5 dimensions
    movl    $55,-232848072(%ebp)    #   dimension 1: 55 elements
    movl    $100,-232848068(%ebp)   #   dimension 2: 100 elements
    movl    $12,-232848064(%ebp)    #   dimension 3: 12 elements
    movl    $98,-232848060(%ebp)    #   dimension 4: 98 elements
    movl    $9,-232848056(%ebp)     #   dimension 5: 9 elements
    movl    $5,-364281220(%ebp)     # local array 'v3': 5 dimensions
    movl    $59,-364281216(%ebp)    #   dimension 1: 59 elements
    movl    $32,-364281212(%ebp)    #   dimension 2: 32 elements
    movl    $91,-364281208(%ebp)    #   dimension 3: 91 elements
    movl    $9,-364281204(%ebp)     #   dimension 4: 9 elements
    movl    $85,-364281200(%ebp)    #   dimension 5: 85 elements
    movl    $5,-378656044(%ebp)     # local array 'v4': 5 dimensions
    movl    $33,-378656040(%ebp)    #   dimension 1: 33 elements
    movl    $55,-378656036(%ebp)    #   dimension 2: 55 elements
    movl    $18,-378656032(%ebp)    #   dimension 3: 18 elements
    movl    $22,-378656028(%ebp)    #   dimension 4: 22 elements
    movl    $5,-378656024(%ebp)     #   dimension 5: 5 elements
    movl    $5,-990842468(%ebp)     # local array 'v5': 5 dimensions
    movl    $70,-990842464(%ebp)    #   dimension 1: 70 elements
    movl    $92,-990842460(%ebp)    #   dimension 2: 92 elements
    movl    $97,-990842456(%ebp)    #   dimension 3: 97 elements
    movl    $28,-990842452(%ebp)    #   dimension 4: 28 elements
    movl    $35,-990842448(%ebp)    #   dimension 5: 35 elements

    # function body
    movl    $99, %eax               #   0:     if     99 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   4:     goto   5_while_cond
    movl    $100, %eax              #   5:     if     100 >= 100 goto 8_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   6:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #   8:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $17450, %eax            #  14:     add    t3 <- 17450, 56327
    movl    $56327, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     add    t4 <- t3, 65400
    movl    $65400, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t5 <- t4, 79556
    movl    $79556, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     sub    t6 <- t5, 55890
    movl    $55890, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     assign v1 <- t6
    movl    %eax, -52(%ebp)        
l_f2_13_while_cond:
    movl    $99, %eax               #  20:     if     99 <= 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_14_while_body     
    jmp     l_f2_12                 #  21:     goto   12
l_f2_14_while_body:
    movl    $97, %eax               #  23:     return 97
    jmp     l_f2_exit              
    movl    $98, %eax               #  24:     return 98
    jmp     l_f2_exit              
    leal    -990842468(%ebp), %eax  #  25:     &()    t7 <- v5
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  26:     param  3 <- t7
    pushl   %eax                   
    leal    -378656044(%ebp), %eax  #  27:     &()    t8 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  28:     param  2 <- t8
    pushl   %eax                   
    leal    -364281220(%ebp), %eax  #  29:     &()    t9 <- v3
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  1 <- t9
    pushl   %eax                   
    leal    -232848076(%ebp), %eax  #  31:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  32:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  33:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -17(%ebp)         
    movl    $100, %eax              #  34:     assign v6 <- 100
    movb    %al, -990842469(%ebp)  
    jmp     l_f2_13_while_cond      #  35:     goto   13_while_cond
l_f2_12:

l_f2_exit:
    # epilogue
    addl    $990842460, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $97, %eax               #   6:     if     97 >= 97 goto 8
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_8               
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_8:
    jmp     l_test_6_if_false       #   9:     goto   6_if_false
    jmp     l_test_6_if_false       #  10:     goto   6_if_false
    jmp     l_test_4                #  11:     goto   4
l_test_6_if_false:
l_test_4:
    movl    $45358, %eax            #  14:     if     45358 < 42200 goto 11_if_true
    movl    $42200, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_if_true      
    jmp     l_test_12_if_false      #  15:     goto   12_if_false
l_test_11_if_true:
    jmp     l_test_exit            
    jmp     l_test_17_if_false      #  18:     goto   17_if_false
    jmp     l_test_15               #  19:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $21078, %eax            #  22:     assign v0 <- 21078
    movl    %eax, v0               
    jmp     l_test_19               #  23:     goto   19
l_test_19:
    jmp     l_test_10               #  25:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyINTfunc            #  28:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_25_if_false      #  29:     goto   25_if_false
    movl    $29899, %eax            #  30:     assign v0 <- 29899
    movl    %eax, v0               
    movl    $0, %eax                #  31:     if     0 # 1 goto 29
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_29              
    jmp     l_test_30               #  32:     goto   30
l_test_29:
    movl    $1, %eax                #  34:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_31               #  35:     goto   31
l_test_30:
    movl    $0, %eax                #  37:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_31:
    movzbl  -17(%ebp), %eax         #  39:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_23               #  40:     goto   23
l_test_25_if_false:
l_test_23:
    call    dummyBOOLfunc           #  43:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
