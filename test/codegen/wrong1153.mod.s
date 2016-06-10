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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 20 of <array 49 of <array 58 of <array 99 of <array 93 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 49 of <array 96 of <array 2 of <array 71 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 71 of <array 83 of <array 12 of <array 81 of <array 93 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $72661, %eax            #   1:     sub    t2 <- 72661, 31188
    movl    $31188, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 85434
    movl    $85434, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t3 >= 35724 goto 2_while_body
    movl    $35724, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
    movl    $4755, %eax             #   9:     assign v3 <- 4755
    movl    %eax, 20(%ebp)         
    movl    $99, %eax               #  10:     return 99
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_4                  #  13:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_12_if_false        #  16:     goto   12_if_false
    movl    $64360, %eax            #  17:     if     64360 < 83749 goto 14_if_true
    movl    $83749, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  18:     goto   15_if_false
l_f0_14_if_true:
    movl    $47585, %eax            #  20:     assign v3 <- 47585
    movl    %eax, 20(%ebp)         
    jmp     l_f0_13                 #  21:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_10                 #  24:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 71 of <array 83 of <array 12 of <array 81 of <array 93 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 84 of <array 49 of <array 96 of <array 2 of <array 71 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 20 of <array 49 of <array 58 of <array 99 of <array 93 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 80 of <array 26 of <array 33 of <array 95 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 45 of <array 75 of <array 27 of <array 28 of <array 27 of <bool>>>>>>> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]
    #   -2093303576(%ebp)  2093303544  [ $v5       <array 20 of <array 49 of <array 58 of <array 99 of <array 93 of <int>>>>>> %ebp-2093303576 ]
    #   1977226448(%ebp)  224437272  [ $v6       <array 84 of <array 49 of <array 96 of <array 2 of <array 71 of <int>>>>>> %ebp+1977226448 ]
    #   1444522796(%ebp)  532703652  [ $v7       <array 71 of <array 83 of <array 12 of <array 81 of <array 93 of <char>>>>>> %ebp+1444522796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1444522808, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $712611122, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2093303576(%ebp)    # local array 'v5': 5 dimensions
    movl    $20,-2093303572(%ebp)   #   dimension 1: 20 elements
    movl    $49,-2093303568(%ebp)   #   dimension 2: 49 elements
    movl    $58,-2093303564(%ebp)   #   dimension 3: 58 elements
    movl    $99,-2093303560(%ebp)   #   dimension 4: 99 elements
    movl    $93,-2093303556(%ebp)   #   dimension 5: 93 elements
    movl    $5,1977226448(%ebp)     # local array 'v6': 5 dimensions
    movl    $84,1977226452(%ebp)    #   dimension 1: 84 elements
    movl    $49,1977226456(%ebp)    #   dimension 2: 49 elements
    movl    $96,1977226460(%ebp)    #   dimension 3: 96 elements
    movl    $2,1977226464(%ebp)     #   dimension 4: 2 elements
    movl    $71,1977226468(%ebp)    #   dimension 5: 71 elements
    movl    $5,1444522796(%ebp)     # local array 'v7': 5 dimensions
    movl    $71,1444522800(%ebp)    #   dimension 1: 71 elements
    movl    $83,1444522804(%ebp)    #   dimension 2: 83 elements
    movl    $12,1444522808(%ebp)    #   dimension 3: 12 elements
    movl    $81,1444522812(%ebp)    #   dimension 4: 81 elements
    movl    $93,1444522816(%ebp)    #   dimension 5: 93 elements

    # function body
    jmp     l_f1_6                  #   0:     goto   6
l_f1_6:
    jmp     l_f1_1_if_true          #   2:     goto   1_if_true
    jmp     l_f1_1_if_true          #   3:     goto   1_if_true
l_f1_1_if_true:
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    movl    $37326, %eax            #   7:     assign v4 <- 37326
    movl    %eax, -32(%ebp)        
    movl    $96180, %eax            #   8:     param  3 <- 96180
    pushl   %eax                   
    leal    1444522796(%ebp), %eax  #   9:     &()    t2 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  2 <- t2
    pushl   %eax                   
    leal    1977226448(%ebp), %eax  #  11:     &()    t3 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t3
    pushl   %eax                   
    leal    -2093303576(%ebp), %eax #  13:     &()    t4 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  15:     call   t5 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  16:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $-1444522808, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_exit              
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_exit            
l_test_7_while_cond:
    movl    $0, %eax                #   5:     if     0 # 0 goto 8_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #   6:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
    movl    $65184, %eax            #  11:     if     65184 = 86088 goto 11
    movl    $86088, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11              
    jmp     l_test_12               #  12:     goto   12
l_test_11:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_13               #  15:     goto   13
l_test_12:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_13:
    movzbl  -13(%ebp), %eax         #  19:     assign v0 <- t0
    movb    %al, v0                
    call    dummyBOOLfunc           #  20:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  21:     assign v1 <- 98
    movb    %al, v1                

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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
