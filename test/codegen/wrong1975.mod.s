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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_0                  #   2:     goto   0
    movl    $98, %eax               #   3:     assign v2 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   7:     assign v2 <- 98
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 15 of <array 95 of <array 77 of <array 29 of <int>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v3       <char> %ebp-18 ]

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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -18(%ebp)         
    movl    $100, %eax              #   1:     assign v3 <- 100
    movb    %al, -18(%ebp)         
    movl    $37761, %eax            #   2:     add    t1 <- 37761, 53546
    movl    $53546, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     return t2
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 55 of <array 15 of <array 95 of <array 77 of <array 29 of <int>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t6       <bool> %ebp-30 ]
    #    -31(%ebp)   1  [ $t7       <char> %ebp-31 ]
    #    -32(%ebp)   1  [ $t8       <bool> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 55 of <array 95 of <array 90 of <array 14 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 47 of <array 49 of <array 5 of <array 56 of <bool>>>>>>> %ebp+12 ]
    #   -700045556(%ebp)  700045524  [ $v3       <array 55 of <array 15 of <array 95 of <array 77 of <array 29 of <int>>>>>> %ebp-700045556 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $700045544, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $175011386, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-700045556(%ebp)     # local array 'v3': 5 dimensions
    movl    $55,-700045552(%ebp)    #   dimension 1: 55 elements
    movl    $15,-700045548(%ebp)    #   dimension 2: 15 elements
    movl    $95,-700045544(%ebp)    #   dimension 3: 95 elements
    movl    $77,-700045540(%ebp)    #   dimension 4: 77 elements
    movl    $29,-700045536(%ebp)    #   dimension 5: 29 elements

    # function body
    movl    $33047, %eax            #   0:     if     33047 > 40757 goto 1_if_true
    movl    $40757, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $22931, %eax            #   3:     mul    t1 <- 22931, 15812
    movl    $15812, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     div    t2 <- t1, 88949
    movl    $88949, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $41330, %eax            #   5:     if     41330 >= t2 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_5                 
    jmp     l_f2_6                  #   6:     goto   6
l_f2_5:
    movl    $1, %eax                #   8:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #   9:     goto   7
l_f2_6:
    movl    $0, %eax                #  11:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movzbl  -21(%ebp), %eax         #  13:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  14:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -700045556(%ebp), %eax  #  17:     &()    t4 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     param  1 <- t4
    pushl   %eax                   
    call    dummyBOOLfunc           #  19:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  20:     if     t5 = 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_14                
    jmp     l_f2_15                 #  21:     goto   15
l_f2_14:
    movl    $1, %eax                #  23:     assign t6 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_16                 #  24:     goto   16
l_f2_15:
    movl    $0, %eax                #  26:     assign t6 <- 0
    movb    %al, -30(%ebp)         
l_f2_16:
    movzbl  -30(%ebp), %eax         #  28:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  29:     call   t7 <- f1
    addl    $8, %esp               
    movb    %al, -31(%ebp)         
    movl    $100, %eax              #  30:     if     100 = t7 goto 10
    movzbl  -31(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  31:     goto   11
l_f2_10:
    movl    $1, %eax                #  33:     assign t8 <- 1
    movb    %al, -32(%ebp)         
    jmp     l_f2_12                 #  34:     goto   12
l_f2_11:
    movl    $0, %eax                #  36:     assign t8 <- 0
    movb    %al, -32(%ebp)         
l_f2_12:
    movzbl  -32(%ebp), %eax         #  38:     return t8
    jmp     l_f2_exit              
l_f2_19_while_cond:
l_f2_22_while_cond:
    movl    $100, %eax              #  41:     if     100 < 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_23_while_body     
    jmp     l_f2_21                 #  42:     goto   21
l_f2_23_while_body:
l_f2_26_while_cond:
    movl    $99, %eax               #  45:     if     99 > 97 goto 27_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_27_while_body     
    jmp     l_f2_25                 #  46:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  48:     goto   26_while_cond
l_f2_25:
    movl    $82609, %eax            #  50:     if     82609 = 41727 goto 30_if_true
    movl    $41727, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_30_if_true        
    jmp     l_f2_31_if_false        #  51:     goto   31_if_false
l_f2_30_if_true:
    jmp     l_f2_29                 #  53:     goto   29
l_f2_31_if_false:
l_f2_29:
    jmp     l_f2_22_while_cond      #  56:     goto   22_while_cond
l_f2_21:
    jmp     l_f2_19_while_cond      #  58:     goto   19_while_cond

l_f2_exit:
    # epilogue
    addl    $700045544, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $37689, %eax            #   2:     param  0 <- 37689
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
