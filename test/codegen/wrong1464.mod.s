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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 21 of <array 11 of <array 26 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    jmp     l_f0_5_if_false         #   0:     goto   5_if_false
    jmp     l_f0_3                  #   1:     goto   3
l_f0_5_if_false:
l_f0_3:
    call    dummyCHARfunc           #   4:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $15605, %eax            #   5:     assign v3 <- 15605
    movl    %eax, -20(%ebp)        
    movl    $32667, %eax            #   6:     param  0 <- 32667
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
l_f0_10_while_cond:
    movl    $99, %eax               #   9:     if     99 > 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  10:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  12:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_0:
l_f0_14_while_cond:
    movl    $7762, %eax             #  17:     return 7762
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  18:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $52850, %eax            #  19:     assign v3 <- 52850
    movl    %eax, -20(%ebp)        
    jmp     l_f0_14_while_cond      #  20:     goto   14_while_cond
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 34 of <array 21 of <array 11 of <array 26 of <array 7 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 52 of <array 64 of <array 7 of <array 64 of <bool>>>>>>> %ebp+8 ]
    #   -1429484(%ebp)  1429452  [ $v2       <array 34 of <array 21 of <array 11 of <array 26 of <array 7 of <bool>>>>>> %ebp-1429484 ]
    #   -1429488(%ebp)   4  [ $v3       <int> %ebp-1429488 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1429476, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $357369, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1429484(%ebp)       # local array 'v2': 5 dimensions
    movl    $34,-1429480(%ebp)      #   dimension 1: 34 elements
    movl    $21,-1429476(%ebp)      #   dimension 2: 21 elements
    movl    $11,-1429472(%ebp)      #   dimension 3: 11 elements
    movl    $26,-1429468(%ebp)      #   dimension 4: 26 elements
    movl    $7,-1429464(%ebp)       #   dimension 5: 7 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $13657, %eax            #   1:     return 13657
    jmp     l_f1_exit              
    movl    $99, %eax               #   2:     param  1 <- 99
    pushl   %eax                   
    leal    -1429484(%ebp), %eax    #   3:     &()    t6 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   5:     call   t7 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movl    $27496, %eax            #  10:     add    t9 <- 27496, 99878
    movl    $99878, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     sub    t10 <- t9, 4947
    movl    $4947, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     assign v3 <- t10
    movl    %eax, -1429488(%ebp)   

l_f1_exit:
    # epilogue
    addl    $1429476, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <ptr(4) to <array 4 of <array 52 of <array 64 of <array 7 of <array 64 of <bool>>>>>>> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 63 of <array 28 of <array 56 of <array 82 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 81 of <array 38 of <array 83 of <array 81 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 87 of <array 6 of <array 6 of <array 44 of <array 51 of <int>>>>>>> %ebp+20 ]
    #    -40(%ebp)   4  [ $v5       <int> %ebp-40 ]
    #   -5963840(%ebp)  5963800  [ $v6       <array 4 of <array 52 of <array 64 of <array 7 of <array 64 of <bool>>>>>> %ebp-5963840 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $5963828, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1490957, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-5963840(%ebp)       # local array 'v6': 5 dimensions
    movl    $4,-5963836(%ebp)       #   dimension 1: 4 elements
    movl    $52,-5963832(%ebp)      #   dimension 2: 52 elements
    movl    $64,-5963828(%ebp)      #   dimension 3: 64 elements
    movl    $7,-5963824(%ebp)       #   dimension 4: 7 elements
    movl    $64,-5963820(%ebp)      #   dimension 5: 64 elements

    # function body
    movl    $59002, %eax            #   0:     add    t6 <- 59002, 69920
    movl    $69920, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     add    t7 <- t6, 63885
    movl    $63885, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     assign v5 <- t7
    movl    %eax, -40(%ebp)        
l_f2_2_while_cond:
    movl    $41099, %eax            #   4:     add    t8 <- 41099, 66129
    movl    $66129, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $82373, %eax            #   5:     if     82373 # t8 goto 3_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   6:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    leal    -5963840(%ebp), %eax    #  10:     &()    t9 <- v6
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  12:     call   t10 <- f1
    addl    $4, %esp               
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     sub    t11 <- t10, 18549
    movl    $18549, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $5963828, %esp          # remove locals
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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $83711, %eax            #   5:     if     83711 < 67101 goto 5
    movl    $67101, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5               
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    movl    $49468, %eax            #  14:     add    t2 <- 49468, 72609
    movl    $72609, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     sub    t3 <- t2, 75228
    movl    $75228, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     sub    t4 <- t3, 89980
    movl    $89980, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     assign v1 <- t4
    movl    %eax, v1               
    movl    $57999, %eax            #  18:     assign v1 <- 57999
    movl    %eax, v1               
    call    dummyCHARfunc           #  19:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  20:     assign v2 <- t5
    movb    %al, v2                

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
