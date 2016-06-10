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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 3 of <array 2 of <array 1 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 1 of <array 10 of <array 1 of <array 2 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 9 of <array 2 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_5                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_5:
    jmp     l_f0_2                  #   4:     goto   2
    jmp     l_f0_2                  #   5:     goto   2
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
l_f0_7_while_cond:
    call    dummyINTfunc            #  13:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $43397, %eax            #  14:     sub    t7 <- 43397, t6
    movl    -20(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     if     t7 # 59276 goto 8_while_body
    movl    $59276, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_8_while_body      
    jmp     l_f0_6                  #  16:     goto   6
l_f0_8_while_body:
    jmp     l_f0_7_while_cond       #  18:     goto   7_while_cond
l_f0_6:
    call    dummyCHARfunc           #  20:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         

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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 5 of <array 9 of <array 7 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 3 of <array 1 of <int>>>>>>> %ebp+12 ]
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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     assign v2 <- 100
    movb    %al, -17(%ebp)         
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <char> %ebp-16 ]
    #    -20(%ebp)   4  [ $t7       <ptr(4) to <array 8 of <array 3 of <array 5 of <array 9 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <ptr(4) to <array 7 of <array 1 of <array 10 of <array 1 of <array 2 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <array 1 of <array 3 of <array 2 of <array 1 of <char>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]
    #    -96(%ebp)  66  [ $v4       <array 7 of <array 1 of <array 3 of <array 2 of <array 1 of <char>>>>>> %ebp-96 ]
    #   -260(%ebp)  164  [ $v5       <array 7 of <array 1 of <array 10 of <array 1 of <array 2 of <char>>>>>> %ebp-260 ]
    #   -2444(%ebp)  2184  [ $v6       <array 8 of <array 3 of <array 5 of <array 9 of <array 2 of <bool>>>>>> %ebp-2444 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2432, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $608, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-96(%ebp)            # local array 'v4': 5 dimensions
    movl    $7,-92(%ebp)            #   dimension 1: 7 elements
    movl    $1,-88(%ebp)            #   dimension 2: 1 elements
    movl    $3,-84(%ebp)            #   dimension 3: 3 elements
    movl    $2,-80(%ebp)            #   dimension 4: 2 elements
    movl    $1,-76(%ebp)            #   dimension 5: 1 elements
    movl    $5,-260(%ebp)           # local array 'v5': 5 dimensions
    movl    $7,-256(%ebp)           #   dimension 1: 7 elements
    movl    $1,-252(%ebp)           #   dimension 2: 1 elements
    movl    $10,-248(%ebp)          #   dimension 3: 10 elements
    movl    $1,-244(%ebp)           #   dimension 4: 1 elements
    movl    $2,-240(%ebp)           #   dimension 5: 2 elements
    movl    $5,-2444(%ebp)          # local array 'v6': 5 dimensions
    movl    $8,-2440(%ebp)          #   dimension 1: 8 elements
    movl    $3,-2436(%ebp)          #   dimension 2: 3 elements
    movl    $5,-2432(%ebp)          #   dimension 3: 5 elements
    movl    $9,-2428(%ebp)          #   dimension 4: 9 elements
    movl    $2,-2424(%ebp)          #   dimension 5: 2 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   1:     if     t4 # 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_3:
    movzbl  -15(%ebp), %eax         #   9:     assign v3 <- t5
    movb    %al, -29(%ebp)         
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    leal    -2444(%ebp), %eax       #  11:     &()    t7 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  3 <- t7
    pushl   %eax                   
    leal    -260(%ebp), %eax        #  13:     &()    t8 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  2 <- t8
    pushl   %eax                   
    leal    -96(%ebp), %eax         #  15:     &()    t9 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     param  1 <- t9
    pushl   %eax                   
    movl    $0, %eax                #  17:     param  0 <- 0
    pushl   %eax                   
    call    f0                      #  18:     call   t10 <- f0
    addl    $16, %esp              
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $2432, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #   5:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    call    dummyCHARfunc           #   8:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   9:     if     t0 # 100 goto 8_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  10:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  12:     goto   7_while_cond
l_test_6:
l_test_11_while_cond:
    movl    $97, %eax               #  15:     if     97 < 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12_while_body   
    jmp     l_test_10               #  16:     goto   10
l_test_12_while_body:
    movl    $97, %eax               #  18:     if     97 < 97 goto 15
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15              
    jmp     l_test_16               #  19:     goto   16
l_test_15:
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_17               #  22:     goto   17
l_test_16:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_17:
    movzbl  -14(%ebp), %eax         #  26:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_20               #  28:     goto   20
l_test_20:
    movl    $100, %eax              #  30:     if     100 <= 99 goto 24
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_24              
    jmp     l_test_25               #  31:     goto   25
l_test_24:
    movl    $1, %eax                #  33:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_26               #  34:     goto   26
l_test_25:
    movl    $0, %eax                #  36:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_26:
    movzbl  -15(%ebp), %eax         #  38:     assign v0 <- t2
    movb    %al, v0                
    movl    $99, %eax               #  39:     if     99 > 97 goto 29_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_29_if_true      
    jmp     l_test_30_if_false      #  40:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_28               #  42:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_11_while_cond    #  45:     goto   11_while_cond
l_test_10:
    call    ReadInt                 #  47:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_34_while_cond:
    movl    $100, %eax              #  49:     if     100 <= 99 goto 35_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_35_while_body   
    jmp     l_test_33               #  50:     goto   33
l_test_35_while_body:
    jmp     l_test_exit            
    jmp     l_test_34_while_cond    #  53:     goto   34_while_cond
l_test_33:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
